PLATFORM ?= unix
ARCH     ?= $(shell uname -m)

# x86 and x86_64 currently have the same implementation
ifeq ($(ARCH),x86_64)
  MULTIVERSE_ARCH = x86
else
  MULTIVERSE_ARCH = ${ARCH}
endif

SOURCES := mv_commit.c mv_info.c arch-$(MULTIVERSE_ARCH).c platform-$(PLATFORM).c

ifeq ($(PLATFORM),linux-kernel)
  obj-y := libmultiverse.o
  libmultiverse-objs := $(patsubst %,%.o,$(basename $(SOURCES)))
  ccflags-y := -D MULTIVERSE_KERNELSPACE
else
  include user.mk
endif
