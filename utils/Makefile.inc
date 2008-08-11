
ifndef SYSNAME
  SYSNAME := $(shell uname)
  ifeq ($(SYSNAME),)
    $(error error with shell command uname)
  endif
endif

ifndef NODENAME
  NODENAME := $(shell uname -n)
  ifeq ($(NODENAME),)
    $(error error with shell command uname -n)
  endif
endif

ifndef MACHNAME
  MACHNAME := $(shell uname -m)
  ifeq ($(MACHNAME),)
    $(error error with shell command uname -m)
  endif
endif

ifndef PROF
  PROF := false
endif

ifndef DEBUG
  ifneq ($(PROF),false)
    OPT := true
  endif
  ifndef OPT
    OPT := false
  endif
  ifeq ($(OPT),false)
    DEBUG := true
  else
    DEBUG := false
  endif
endif

ifndef MP
  MP = false
endif

# set architecture dependent directories and default options

# defaults
INSTRUCTION=$(MACHNAME)
BIN_ARCH_DIR = $(INSTRUCTION)-$(OPERATING_SYSTEM)
LIB_ARCH_DIR = $(INSTRUCTION)-$(ABI)-$(OPERATING_SYSTEM)

ifeq ($(SYSNAME),Linux)
  OPERATING_SYSTEM := linux
  ifeq ($(filter-out i%86,$(MACHNAME)),)
    INSTRUCTION := i686
  endif
  ifneq ($(filter $(INSTRUCTION),i686 ia64 x86_64),)# i686, ia64, x86_64 
    LIB_ARCH_DIR = $(INSTRUCTION)-$(OPERATING_SYSTEM)# no ABI required
  endif
  ifndef ABI
    ABI=32
    ifeq ($(filter-out i%86,$(MACHNAME)),)
      ABI=32
    endif
    ifneq (,$(filter $(MACHNAME),ia64 x86_64))# ia64 or x86_64
      ABI=64
    endif
  endif
endif
ifeq ($(SYSNAME),win32)
  LIB_ARCH_DIR = $(INSTRUCTION)-$(OPERATING_SYSTEM)# no ABI
  ABI=32
  INSTRUCTION := i386
  OPERATING_SYSTEM := win32
endif
ifeq ($(SYSNAME),CYGWIN_NT-5.1)
  LIB_ARCH_DIR = $(INSTRUCTION)-$(OPERATING_SYSTEM)# no ABI
  ABI=32
  INSTRUCTION := i386
  OPERATING_SYSTEM := win32
endif
ifeq ($(SYSNAME),AIX)
  ifndef ABI
    ifdef OBJECT_MODE
      ifneq ($(OBJECT_MODE),32_64)
        ABI = $(OBJECT_MODE)
      endif
    endif
  endif
  ifndef ABI
    ABI = 32
  endif
  INSTRUCTION := rs6000
  OPERATING_SYSTEM := aix
endif

EXE_ABI_SUFFIX =
ifeq ($(ABI),64)
  ifeq ($(filter $(MACHNAME),ia64 x86_64),)# not ia64, x86_64 
    EXE_ABI_SUFFIX = 64
  endif
endif

ifeq ($(MP),false)
  MT_SUFFIX =
  MP_SUFFIX =
else
  MT_SUFFIX = -mt
  MP_SUFFIX = _mp
endif

ifeq ($(PROF),false)
  PROF_SUFFIX =
else
  PROF_SUFFIX = -prof
endif

ifneq ($(DEBUG),false)
  DEBUG_SUFFIX = -debug
else
  DEBUG_SUFFIX = 
endif

# Useful functions

# This returns an empty string if not found
searchdirs = $(firstword $(wildcard $(addsuffix /$(strip $2),$1)))

# This still returns the name of the desired file if not found and so is useful for error checking and reporting.
searchdirsforce = $(firstword $(wildcard $(addsuffix /$(strip $2),$1)) $2)

# Convert a cygwin path to a normal windows path
cygwintowin = $($1)

## Check that call function works (for searchdirs, olist_args, etc.)
#ifeq ($(call olist_args,test),)
#  $(error call function not available.  Use GNU make version 3.78 or newer)
#endif