#DIR MUST ENDED WITH "/"
#my macOS dir
ARM_GCC_DIR_OSX = /opt/homebrew/bin/
BASE_SDK_PATH_OSX = /Users/losehu/Downloads/gecko-sdk/
JLINK_PATH_OSX = JLinkExe
COMMANDER_PATH_OSX =/Users/losehu/Downloads/SimplicityCommander-Mac/Commander.app/Contents/MacOS/Commander

#my Windows dir
ARM_GCC_DIR_WIN = C:/SiliconLabs/SimplicityStudio/v5/developer/toolchains/gnu_arm/12.2.rel1_2023.7/
BASE_SDK_PATH_WIN = C:/Users/losehu/Downloads/gecko-sdk/
JLINK_PATH_WIN = 
COMMANDER_PATH_WIN=

#my Linux dir
ARM_GCC_DIR_LINUX = 
BASE_SDK_PATH_LINUX = gecko-sdk/
JLINK_PATH_LINUX = 
COMMANDER_PATH_LINUX = commander/commander



DEVICE = EFR32BG22CxxxF352
INTERFACE = SWD
SPEED = 4000
HEX_FILE = build/debug/bt_soc_empty.hex
LOAD_ADDRESS = 0x006000




ifeq ($(OS),Windows_NT)
  ARM_GCC_DIR ?= $(ARM_GCC_DIR_WIN)
  BASE_SDK_PATH = $(BASE_SDK_PATH_WIN)
  JLINK_PATH = $(JLINK_PATH_WIN)
  COMMANDER_PATH = $(COMMANDER_PATH_WIN)
else
  UNAME_S := $(shell uname -s)
  ifeq ($(UNAME_S),Darwin)
    ARM_GCC_DIR ?= $(ARM_GCC_DIR_OSX)
    BASE_SDK_PATH = $(BASE_SDK_PATH_OSX)
    JLINK_PATH = $(JLINK_PATH_OSX)
    COMMANDER_PATH = $(COMMANDER_PATH_OSX)

  else
    ARM_GCC_DIR ?= $(ARM_GCC_DIR_LINUX)
    BASE_SDK_PATH = $(BASE_SDK_PATH_LINUX)
    JLINK_PATH = $(JLINK_PATH_LINUX)
    COMMANDER_PATH = $(COMMANDER_PATH_LINUX)

  endif
endif
export ARM_GCC_DIR
export BASE_SDK_PATH
export COMMANDER_PATH
print-config:
	@echo "Detected OS: $(UNAME_S)"
	@echo "ARM_GCC_DIR: $(ARM_GCC_DIR)"
	@echo "JLINK_PATH: $(JLINK_PATH)"

flash:
	$(JLINK_PATH) -device $(DEVICE) -if $(INTERFACE) -speed $(SPEED) -autoconnect 1 \
	-Command "loadfile $(HEX_FILE) $(LOAD_ADDRESS); verify $(HEX_FILE) $(LOAD_ADDRESS); exit"

%:
	@if [ "$@" != "print-config" ]; then \
		$(MAKE) print-config; \
	fi
	@$(MAKE) -f bt_soc_empty.Makefile $@


