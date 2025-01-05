#DIR MUST ENDED WITH "/"
#my macOS dir
ARM_GCC_DIR_OSX = /opt/homebrew/bin/
BASE_SDK_PATH_OSX = /Users/losehu/Downloads/gecko-sdk/

#my Windows dir
ARM_GCC_DIR_WIN = C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/gnu_arm/12.2.rel1_2023.7/
BASE_SDK_PATH_WIN = C:/Users/losehu/Downloads/gecko-sdk/

#my Linux dir
ARM_GCC_DIR_LINUX= /home/SimplicityStudio/v5/Eclipse/developer/toolchains/gnu_arm/12.2.rel1_2023.7/
BASE_SDK_PATH_LINUX= /home/losehu/Downloads/gecko-sdk/


ifeq ($(OS),Windows_NT)
  ARM_GCC_DIR ?= $(ARM_GCC_DIR_WIN)
  BASE_SDK_PATH = $(BASE_SDK_PATH_WIN)
else
  UNAME_S := $(shell uname -s)
  ifeq ($(UNAME_S),Darwin)
    ARM_GCC_DIR ?= $(ARM_GCC_DIR_OSX)
    BASE_SDK_PATH = $(BASE_SDK_PATH_OSX)
  else
    ARM_GCC_DIR ?= $(ARM_GCC_DIR_LINUX)
    BASE_SDK_PATH = $(BASE_SDK_PATH_LINUX)
  endif
endif
export ARM_GCC_DIR
export BASE_SDK_PATH
print-config:
	@echo "Detected OS: $(UNAME_S)"
	@echo "ARM_GCC_DIR: $(ARM_GCC_DIR)"
  
%:
	@if [ "$@" != "print-config" ]; then \
		$(MAKE) print-config; \
	fi
	@$(MAKE) -f bt_soc_empty.Makefile $@
