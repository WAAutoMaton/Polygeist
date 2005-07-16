//===-- ELFWriter.cpp - Target-independent ELF Writer code ----------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file was developed by Chris Lattner and is distributed under the
// University of Illinois Open Source License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements the target-independent ELF writer.  This file writes out
// the ELF file in the following order:
//
//  #1. ELF Header
//  #2. '.text' section
//  #3. '.data' section
//  #4. '.bss' section  (conceptual position in file)
//  ...
//  #X. '.shstrtab' section
//  #Y. Section Table
//
// The entries in the section table are laid out as:
//  #0. Null entry [required]
//  #1. ".text" entry - the program code
//  #2. ".data" entry - global variables with initializers.     [ if needed ]
//  #3. ".bss" entry  - global variables without initializers.  [ if needed ]
//  ...
//  #N. ".shstrtab" entry - String table for the section names.

//
// NOTE: This code should eventually be extended to support 64-bit ELF (this
// won't be hard), but we haven't done so yet!
//
//===----------------------------------------------------------------------===//

#include "llvm/CodeGen/ELFWriter.h"
#include "llvm/Module.h"
#include "llvm/CodeGen/MachineCodeEmitter.h"
#include "llvm/CodeGen/MachineConstantPool.h"
#include "llvm/Target/TargetMachine.h"
#include "llvm/Support/Mangler.h"
using namespace llvm;

//===----------------------------------------------------------------------===//
//                       ELFCodeEmitter Implementation
//===----------------------------------------------------------------------===//

namespace llvm {
  /// ELFCodeEmitter - This class is used by the ELFWriter to emit the code for
  /// functions to the ELF file.
  class ELFCodeEmitter : public MachineCodeEmitter {
    ELFWriter &EW;
    ELFWriter::ELFSection *ES;  // Section to write to.
    std::vector<unsigned char> *OutBuffer;
    size_t FnStart;
  public:
    ELFCodeEmitter(ELFWriter &ew) : EW(ew), OutBuffer(0) {}

    void startFunction(MachineFunction &F);
    void finishFunction(MachineFunction &F);

    void emitConstantPool(MachineConstantPool *MCP) {
      if (MCP->isEmpty()) return;
      assert(0 && "unimp");
    }
    virtual void emitByte(unsigned char B) {
      OutBuffer->push_back(B);
    }
    virtual void emitWordAt(unsigned W, unsigned *Ptr) {
      assert(0 && "ni");
    }
    virtual void emitWord(unsigned W) {
      assert(0 && "ni");
    }
    virtual uint64_t getCurrentPCValue() {
      return OutBuffer->size();
    }
    virtual uint64_t getCurrentPCOffset() {
      return OutBuffer->size()-FnStart;
    }
    void addRelocation(const MachineRelocation &MR) {
      assert(0 && "relo not handled yet!");
    }
    virtual uint64_t getConstantPoolEntryAddress(unsigned Index) {
      assert(0 && "CP not implementated yet!");
      return 0;
    }

    /// JIT SPECIFIC FUNCTIONS - DO NOT IMPLEMENT THESE HERE!
    void startFunctionStub(unsigned StubSize) {
      assert(0 && "JIT specific function called!");
      abort();
    }
    void *finishFunctionStub(const Function *F) {
      assert(0 && "JIT specific function called!");
      abort();
      return 0;
    }
  };
}

/// startFunction - This callback is invoked when a new machine function is
/// about to be emitted.
void ELFCodeEmitter::startFunction(MachineFunction &F) {
  // Align the output buffer to the appropriate alignment.
  unsigned Align = 16;   // FIXME: GENERICIZE!!
  // Get the ELF Section that this function belongs in.
  ES = &EW.getSection(".text", ELFWriter::ELFSection::SHT_PROGBITS,
                      ELFWriter::ELFSection::SHF_EXECINSTR |
                      ELFWriter::ELFSection::SHF_ALLOC);
  OutBuffer = &ES->SectionData;
  
  // Upgrade the section alignment if required.
  if (ES->Align < Align) ES->Align = Align;
  
  // Add padding zeros to the end of the buffer to make sure that the
  // function will start on the correct byte alignment within the section.
  size_t SectionOff = OutBuffer->size();
  ELFWriter::align(*OutBuffer, Align);
  
  FnStart = OutBuffer->size();
}

/// finishFunction - This callback is invoked after the function is completely
/// finished.
void ELFCodeEmitter::finishFunction(MachineFunction &F) {
  // We now know the size of the function, add a symbol to represent it.
  ELFWriter::ELFSym FnSym(F.getFunction());
  
  // Figure out the binding (linkage) of the symbol.
  switch (F.getFunction()->getLinkage()) {
  default:
    // appending linkage is illegal for functions.
    assert(0 && "Unknown linkage type!");
  case GlobalValue::ExternalLinkage:
    FnSym.SetBind(ELFWriter::ELFSym::STB_GLOBAL);
    break;
  case GlobalValue::LinkOnceLinkage:
  case GlobalValue::WeakLinkage:
    FnSym.SetBind(ELFWriter::ELFSym::STB_WEAK);
    break;
  case GlobalValue::InternalLinkage:
    FnSym.SetBind(ELFWriter::ELFSym::STB_LOCAL);
    break;
  }

  ES->Size = OutBuffer->size();

  FnSym.SetType(ELFWriter::ELFSym::STT_FUNC);
  FnSym.SectionIdx = ES->SectionIdx;
    FnSym.Value = FnStart;   // Value = Offset from start of Section.
  FnSym.Size = OutBuffer->size()-FnStart;
  
  // Finally, add it to the symtab.
  EW.SymbolTable.push_back(FnSym);
}

//===----------------------------------------------------------------------===//
//                          ELFWriter Implementation
//===----------------------------------------------------------------------===//

ELFWriter::ELFWriter(std::ostream &o, TargetMachine &tm) : O(o), TM(tm) {
  e_machine = 0;  // e_machine defaults to 'No Machine'
  e_flags = 0;    // e_flags defaults to 0, no flags.

  is64Bit = TM.getTargetData().getPointerSizeInBits() == 64;  
  isLittleEndian = TM.getTargetData().isLittleEndian();

  // Create the machine code emitter object for this target.
  MCE = new ELFCodeEmitter(*this);
  NumSections = 0;
}

ELFWriter::~ELFWriter() {
  delete MCE;
}

// doInitialization - Emit the file header and all of the global variables for
// the module to the ELF file.
bool ELFWriter::doInitialization(Module &M) {
  Mang = new Mangler(M);

  // Local alias to shortenify coming code.
  std::vector<unsigned char> &FH = FileHeader;
    
  outbyte(FH, 0x7F);                     // EI_MAG0
  outbyte(FH, 'E');                      // EI_MAG1
  outbyte(FH, 'L');                      // EI_MAG2
  outbyte(FH, 'F');                      // EI_MAG3
  outbyte(FH, is64Bit ? 2 : 1);          // EI_CLASS
  outbyte(FH, isLittleEndian ? 1 : 2);   // EI_DATA
  outbyte(FH, 1);                        // EI_VERSION
  FH.resize(16);                         // EI_PAD up to 16 bytes.
  
  // This should change for shared objects.
  outhalf(FH, 1);                 // e_type = ET_REL
  outhalf(FH, e_machine);         // e_machine = whatever the target wants
  outword(FH, 1);                 // e_version = 1
  outaddr(FH, 0);                 // e_entry = 0 -> no entry point in .o file
  outaddr(FH, 0);                 // e_phoff = 0 -> no program header for .o

  ELFHeader_e_shoff_Offset = FH.size();
  outaddr(FH, 0);                 // e_shoff
  outword(FH, e_flags);           // e_flags = whatever the target wants

  outhalf(FH, is64Bit ? 64 : 52); // e_ehsize = ELF header size
  outhalf(FH, 0);                 // e_phentsize = prog header entry size
  outhalf(FH, 0);                 // e_phnum     = # prog header entries = 0
  outhalf(FH, is64Bit ? 64 : 40); // e_shentsize = sect hdr entry size

  
  ELFHeader_e_shnum_Offset = FH.size();
  outhalf(FH, 0);                 // e_shnum     = # of section header ents
  ELFHeader_e_shstrndx_Offset = FH.size();
  outhalf(FH, 0);                 // e_shstrndx  = Section # of '.shstrtab'

  // Add the null section, which is required to be first in the file.
  getSection("", 0, 0);

  // Start up the symbol table.  The first entry in the symtab is the null
  // entry.
  SymbolTable.push_back(ELFSym(0));

  return false;
}

void ELFWriter::EmitGlobal(GlobalVariable *GV) {
  // If this is an external global, emit it now.  TODO: Note that it would be
  // better to ignore the symbol here and only add it to the symbol table if
  // referenced.
  if (!GV->hasInitializer()) {
    ELFSym ExternalSym(GV);
    ExternalSym.SetBind(ELFSym::STB_GLOBAL);
    ExternalSym.SetType(ELFSym::STT_NOTYPE);
    ExternalSym.SectionIdx = ELFSection::SHN_UNDEF;
    SymbolTable.push_back(ExternalSym);
    return;
  }
  
  const Type *GVType = (const Type*)GV->getType();
  unsigned Align = TM.getTargetData().getTypeAlignment(GVType);
  unsigned Size  = TM.getTargetData().getTypeSize(GVType);

  // If this global has a zero initializer, it is part of the .bss or common
  // section.
  if (GV->getInitializer()->isNullValue()) {
    // If this global is part of the common block, add it now.  Variables are
    // part of the common block if they are zero initialized and allowed to be
    // merged with other symbols.
    if (GV->hasLinkOnceLinkage() || GV->hasWeakLinkage()) {
      ELFSym CommonSym(GV);
      // Value for common symbols is the alignment required.
      CommonSym.Value = Align;
      CommonSym.Size  = Size;
      CommonSym.SetBind(ELFSym::STB_GLOBAL);
      CommonSym.SetType(ELFSym::STT_OBJECT);
      // TODO SOMEDAY: add ELF visibility.
      CommonSym.SectionIdx = ELFSection::SHN_COMMON;
      SymbolTable.push_back(CommonSym);
      return;
    }

    // Otherwise, this symbol is part of the .bss section.  Emit it now.

    // Handle alignment.  Ensure section is aligned at least as much as required
    // by this symbol.
    ELFSection &BSSSection = getBSSSection();
    BSSSection.Align = std::max(BSSSection.Align, Align);

    // Within the section, emit enough virtual padding to get us to an alignment
    // boundary.
    if (Align)
      BSSSection.Size = (BSSSection.Size + Align - 1) & ~(Align-1);

    ELFSym BSSSym(GV);
    BSSSym.Value = BSSSection.Size;
    BSSSym.Size = Size;
    BSSSym.SetType(ELFSym::STT_OBJECT);

    switch (GV->getLinkage()) {
    default:  // weak/linkonce handled above
      assert(0 && "Unexpected linkage type!");
    case GlobalValue::AppendingLinkage:  // FIXME: This should be improved!
    case GlobalValue::ExternalLinkage:
      BSSSym.SetBind(ELFSym::STB_GLOBAL);
      break;
    case GlobalValue::InternalLinkage:
      BSSSym.SetBind(ELFSym::STB_LOCAL);
      break;
    }

    // Set the idx of the .bss section
    BSSSym.SectionIdx = BSSSection.SectionIdx;
    SymbolTable.push_back(BSSSym);

    // Reserve space in the .bss section for this symbol.
    BSSSection.Size += Size;
    return;
  }

  // FIXME: handle .rodata
  //assert(!GV->isConstant() && "unimp");

  // FIXME: handle .data
  //assert(0 && "unimp");
}


bool ELFWriter::runOnMachineFunction(MachineFunction &MF) {
  // Nothing to do here, this is all done through the MCE object above.
  return false;
}

/// doFinalization - Now that the module has been completely processed, emit
/// the ELF file to 'O'.
bool ELFWriter::doFinalization(Module &M) {
  // Okay, the ELF header and .text sections have been completed, build the
  // .data, .bss, and "common" sections next.
  for (Module::global_iterator I = M.global_begin(), E = M.global_end();
       I != E; ++I)
    EmitGlobal(I);

  // Emit the symbol table now, if non-empty.
  EmitSymbolTable();

  // FIXME: Emit the relocations now.

  // Emit the string table for the sections in the ELF file we have.
  EmitSectionTableStringTable();

  // Emit the sections to the .o file, and emit the section table for the file.
  OutputSectionsAndSectionTable();

  // We are done with the abstract symbols.
  SectionList.clear();
  NumSections = 0;

  // Release the name mangler object.
  delete Mang; Mang = 0;
  return false;
}

/// EmitSymbolTable - If the current symbol table is non-empty, emit the string
/// table for it and then the symbol table itself.
void ELFWriter::EmitSymbolTable() {
  if (SymbolTable.size() == 1) return;  // Only the null entry.

  // FIXME: compact all local symbols to the start of the symtab.
  unsigned FirstNonLocalSymbol = 1;

  ELFSection &StrTab = getSection(".strtab", ELFSection::SHT_STRTAB, 0);
  StrTab.Align = 1;

  DataBuffer &StrTabBuf = StrTab.SectionData;

  // Set the zero'th symbol to a null byte, as required.
  outbyte(StrTabBuf, 0);
  SymbolTable[0].NameIdx = 0;
  unsigned Index = 1;
  for (unsigned i = 1, e = SymbolTable.size(); i != e; ++i) {
    // Use the name mangler to uniquify the LLVM symbol.
    std::string Name = Mang->getValueName(SymbolTable[i].GV);

    if (Name.empty()) {
      SymbolTable[i].NameIdx = 0;
    } else {
      SymbolTable[i].NameIdx = Index;

      // Add the name to the output buffer, including the null terminator.
      StrTabBuf.insert(StrTabBuf.end(), Name.begin(), Name.end());

      // Add a null terminator.
      StrTabBuf.push_back(0);

      // Keep track of the number of bytes emitted to this section.
      Index += Name.size()+1;
    }
  }
  assert(Index == StrTabBuf.size());
  StrTab.Size = Index;

  // Now that we have emitted the string table and know the offset into the
  // string table of each symbol, emit the symbol table itself.
  ELFSection &SymTab = getSection(".symtab", ELFSection::SHT_SYMTAB, 0);
  SymTab.Align = is64Bit ? 8 : 4;
  SymTab.Link = SymTab.SectionIdx;     // Section Index of .strtab.
  SymTab.Info = FirstNonLocalSymbol;   // First non-STB_LOCAL symbol.
  SymTab.EntSize = 16; // Size of each symtab entry. FIXME: wrong for ELF64
  DataBuffer &SymTabBuf = SymTab.SectionData;

  if (!is64Bit) {   // 32-bit and 64-bit formats are shuffled a bit.
    for (unsigned i = 0, e = SymbolTable.size(); i != e; ++i) {
      ELFSym &Sym = SymbolTable[i];
      outword(SymTabBuf, Sym.NameIdx);
      outaddr32(SymTabBuf, Sym.Value);
      outword(SymTabBuf, Sym.Size);
      outbyte(SymTabBuf, Sym.Info);
      outbyte(SymTabBuf, Sym.Other);
      outhalf(SymTabBuf, Sym.SectionIdx);
    }
  } else {
    for (unsigned i = 0, e = SymbolTable.size(); i != e; ++i) {
      ELFSym &Sym = SymbolTable[i];
      outword(SymTabBuf, Sym.NameIdx);
      outbyte(SymTabBuf, Sym.Info);
      outbyte(SymTabBuf, Sym.Other);
      outhalf(SymTabBuf, Sym.SectionIdx);
      outaddr64(SymTabBuf, Sym.Value);
      outxword(SymTabBuf, Sym.Size);
    }
  }

  SymTab.Size = SymTabBuf.size();
}

/// EmitSectionTableStringTable - This method adds and emits a section for the
/// ELF Section Table string table: the string table that holds all of the
/// section names.
void ELFWriter::EmitSectionTableStringTable() {
  // First step: add the section for the string table to the list of sections:
  ELFSection &SHStrTab = getSection(".shstrtab", ELFSection::SHT_STRTAB, 0);

  // Now that we know which section number is the .shstrtab section, update the
  // e_shstrndx entry in the ELF header.
  fixhalf(FileHeader, SHStrTab.SectionIdx, ELFHeader_e_shstrndx_Offset);

  // Set the NameIdx of each section in the string table and emit the bytes for
  // the string table.
  unsigned Index = 0;
  DataBuffer &Buf = SHStrTab.SectionData;

  for (std::list<ELFSection>::iterator I = SectionList.begin(),
         E = SectionList.end(); I != E; ++I) {
    // Set the index into the table.  Note if we have lots of entries with
    // common suffixes, we could memoize them here if we cared.
    I->NameIdx = Index;

    // Add the name to the output buffer, including the null terminator.
    Buf.insert(Buf.end(), I->Name.begin(), I->Name.end());

    // Add a null terminator.
    Buf.push_back(0);

    // Keep track of the number of bytes emitted to this section.
    Index += I->Name.size()+1;
  }

  // Set the size of .shstrtab now that we know what it is.
  assert(Index == Buf.size());
  SHStrTab.Size = Index;
}

/// OutputSectionsAndSectionTable - Now that we have constructed the file header
/// and all of the sections, emit these to the ostream destination and emit the
/// SectionTable.
void ELFWriter::OutputSectionsAndSectionTable() {
  // Pass #1: Compute the file offset for each section.
  size_t FileOff = FileHeader.size();   // File header first.

  // Emit all of the section data in order.
  for (std::list<ELFSection>::iterator I = SectionList.begin(),
         E = SectionList.end(); I != E; ++I) {
    // Align FileOff to whatever the alignment restrictions of the section are.
    if (I->Align)
      FileOff = (FileOff+I->Align-1) & ~(I->Align-1);
    I->Offset = FileOff;
    FileOff += I->SectionData.size();
  }

  // Align Section Header.
  unsigned TableAlign = is64Bit ? 8 : 4;
  FileOff = (FileOff+TableAlign-1) & ~(TableAlign-1);

  // Now that we know where all of the sections will be emitted, set the e_shnum
  // entry in the ELF header.
  fixhalf(FileHeader, NumSections, ELFHeader_e_shnum_Offset);
  
  // Now that we know the offset in the file of the section table, update the
  // e_shoff address in the ELF header.
  fixaddr(FileHeader, FileOff, ELFHeader_e_shoff_Offset);
  
  // Now that we know all of the data in the file header, emit it and all of the
  // sections!
  O.write((char*)&FileHeader[0], FileHeader.size());
  FileOff = FileHeader.size();
  DataBuffer().swap(FileHeader);

  DataBuffer Table;

  // Emit all of the section data and build the section table itself.
  while (!SectionList.empty()) {
    const ELFSection &S = *SectionList.begin();

    // Align FileOff to whatever the alignment restrictions of the section are.
    if (S.Align)
      for (size_t NewFileOff = (FileOff+S.Align-1) & ~(S.Align-1);
           FileOff != NewFileOff; ++FileOff)
        O.put(0xAB);
    O.write((char*)&S.SectionData[0], S.SectionData.size());
    FileOff += S.SectionData.size();

    outword(Table, S.NameIdx);  // sh_name - Symbol table name idx
    outword(Table, S.Type);     // sh_type - Section contents & semantics
    outword(Table, S.Flags);    // sh_flags - Section flags.
    outaddr(Table, S.Addr);     // sh_addr - The mem addr this section is in.
    outaddr(Table, S.Offset);   // sh_offset - Offset from the file start.
    outword(Table, S.Size);     // sh_size - The section size.
    outword(Table, S.Link);     // sh_link - Section header table index link.
    outword(Table, S.Info);     // sh_info - Auxillary information.
    outword(Table, S.Align);    // sh_addralign - Alignment of section.
    outword(Table, S.EntSize);  // sh_entsize - Size of entries in the section.

    SectionList.pop_front();
  }

  // Align output for the section table.
  for (size_t NewFileOff = (FileOff+TableAlign-1) & ~(TableAlign-1);
       FileOff != NewFileOff; ++FileOff)
    O.put(0xAB);
  
  // Emit the section table itself.
  O.write((char*)&Table[0], Table.size());
}
