####################################################################
# Automatically-generated file. Do not edit!                       #
# Makefile Version 16                                              #
####################################################################


UNAME:=$(shell $(POSIX_TOOL_PATH)uname -s | $(POSIX_TOOL_PATH)sed -e 's/^\(CYGWIN\).*/\1/' | $(POSIX_TOOL_PATH)sed -e 's/^\(MINGW\).*/\1/')
ifeq ($(UNAME),MINGW)
# Translate "C:/super" into "/C/super" for MinGW make.
SDK_PATH := /$(shell $(POSIX_TOOL_PATH)echo $(BASE_SDK_PATH) | sed s/://)
endif
SDK_PATH ?= $(BASE_SDK_PATH)
COPIED_SDK_PATH ?= simplicity_sdk_2024.12.0

# This uses the explicit build rules below
PROJECT_SOURCE_FILES =

C_SOURCE_FILES   += $(filter %.c, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cpp, $(PROJECT_SOURCE_FILES))
CXX_SOURCE_FILES += $(filter %.cc, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.s, $(PROJECT_SOURCE_FILES))
ASM_SOURCE_FILES += $(filter %.S, $(PROJECT_SOURCE_FILES))
LIB_FILES        += $(filter %.a, $(PROJECT_SOURCE_FILES))

C_DEFS += \
 '-DEFR32BG22C112F352GM32=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal'

ASM_DEFS += \
 '-DEFR32BG22C112F352GM32=1' \
 '-DSL_CODE_COMPONENT_SYSTEM=system' \
 '-DSL_APP_PROPERTIES=1' \
 '-DBOOTLOADER_APPLOADER=1' \
 '-DSL_CODE_COMPONENT_CLOCK_MANAGER=clock_manager' \
 '-DSL_COMPONENT_CATALOG_PRESENT=1' \
 '-DSL_CODE_COMPONENT_DEVICE_PERIPHERAL=device_peripheral' \
 '-DSL_CODE_COMPONENT_DMADRV=dmadrv' \
 '-DSL_CODE_COMPONENT_HAL_COMMON=hal_common' \
 '-DSL_CODE_COMPONENT_HAL_GPIO=hal_gpio' \
 '-DCMSIS_NVIC_VIRTUAL=1' \
 '-DCMSIS_NVIC_VIRTUAL_HEADER_FILE="cmsis_nvic_virtual.h"' \
 '-DMBEDTLS_CONFIG_FILE=<sl_mbedtls_config.h>' \
 '-DSL_CODE_COMPONENT_POWER_MANAGER=power_manager' \
 '-DMBEDTLS_PSA_CRYPTO_CONFIG_FILE=<psa_crypto_config.h>' \
 '-DSL_RAIL_LIB_MULTIPROTOCOL_SUPPORT=0' \
 '-DSL_RAIL_UTIL_PA_CONFIG_HEADER=<sl_rail_util_pa_config.h>' \
 '-DSL_CODE_COMPONENT_SE_MANAGER=se_manager' \
 '-DSL_CODE_COMPONENT_CORE=core' \
 '-DSL_CODE_COMPONENT_SLEEPTIMER=sleeptimer' \
 '-DSLI_RADIOAES_REQUIRES_MASKING=1' \
 '-DSL_CODE_COMPONENT_PSEC_OSAL=psec_osal'

INCLUDES += \
 -Iautogen \
 -Iconfig \
 -Iconfig/btconf \
 -I. \
 -I$(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Include \
 -I$(SDK_PATH)/app/common/util/app_assert \
 -I$(SDK_PATH)/app/common/util/app_log \
 -I$(SDK_PATH)/app/common/util/app_timer \
 -I$(SDK_PATH)/app/common/util/app_timer/bm \
 -I$(SDK_PATH)/protocol/bluetooth/inc \
 -I$(SDK_PATH)/platform/common/inc \
 -I$(SDK_PATH)/protocol/bluetooth/bgcommon/inc \
 -I$(SDK_PATH)/protocol/bluetooth/bgstack/ll/inc \
 -I$(SDK_PATH)/hardware/board/inc \
 -I$(SDK_PATH)/platform/bootloader \
 -I$(SDK_PATH)/platform/bootloader/api \
 -I$(SDK_PATH)/platform/service/clock_manager/inc \
 -I$(SDK_PATH)/platform/service/clock_manager/src \
 -I$(SDK_PATH)/platform/CMSIS/Core/Include \
 -I$(SDK_PATH)/platform/service/device_manager/inc \
 -I$(SDK_PATH)/platform/service/device_init/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc \
 -I$(SDK_PATH)/platform/emdrv/dmadrv/inc/s2_signals \
 -I$(SDK_PATH)/platform/emdrv/common/inc \
 -I$(SDK_PATH)/platform/emlib/inc \
 -I$(SDK_PATH)/app/bluetooth/common/gatt_service_device_information \
 -I$(SDK_PATH)/platform/driver/gpio/inc \
 -I$(SDK_PATH)/platform/peripheral/inc \
 -I$(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc \
 -I$(SDK_PATH)/platform/service/interrupt_manager/inc/arm \
 -I$(SDK_PATH)/platform/service/iostream/inc \
 -I$(SDK_PATH)/platform/driver/leddrv/inc \
 -I$(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/include \
 -I$(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/config/preset \
 -I$(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/inc \
 -I$(SDK_PATH)/util/third_party/mbedtls/include \
 -I$(SDK_PATH)/util/third_party/mbedtls/library \
 -I$(SDK_PATH)/platform/service/memory_manager/inc \
 -I$(SDK_PATH)/platform/service/memory_manager/src \
 -I$(SDK_PATH)/platform/service/memory_manager/profiler/inc \
 -I$(SDK_PATH)/platform/service/mpu/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/inc \
 -I$(SDK_PATH)/platform/emdrv/nvm3/config \
 -I$(SDK_PATH)/platform/service/power_manager/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_psa_driver/inc \
 -I$(SDK_PATH)/platform/radio/rail_lib/common \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ble \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/ieee802154 \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/wmbus \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/zwave \
 -I$(SDK_PATH)/platform/radio/rail_lib/chip/efr32/efr32xg2x \
 -I$(SDK_PATH)/platform/radio/rail_lib/protocol/sidewalk \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/efr32xg22 \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init \
 -I$(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti \
 -I$(SDK_PATH)/platform/security/sl_component/se_manager/inc \
 -I$(SDK_PATH)/platform/common/toolchain/inc \
 -I$(SDK_PATH)/platform/service/system/inc \
 -I$(SDK_PATH)/platform/service/sleeptimer/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sli_crypto/inc \
 -I$(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src \
 -I$(SDK_PATH)/platform/security/sl_component/sli_psec_osal/inc \
 -I$(SDK_PATH)/platform/service/udelay/inc

GROUP_START =-Wl,--start-group
GROUP_END =-Wl,--end-group

PROJECT_LIBS = \
 -lgcc \
 -lc \
 -lm \
 -lnosys \
 $(SDK_PATH)/protocol/bluetooth/bgcommon/lib/build/gcc/cortex-m33/bgcommon/release/libbgcommon.a \
 $(SDK_PATH)/protocol/bluetooth/bgstack/ll/build/gcc/xg22/release/liblinklayer.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/bgstack/release/libbondingdb.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/ble_bgapi/release/libble_bgapi_gatt_client.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/ble_bgapi/release/libble_bgapi_gatt_server.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/bgapi_protocol/api3/release/libbgapi_core.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/accept_list/release/libble_host_accept_list_stub.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/bgstack/release/libble_host.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/ble_bgapi/release/libble_bgapi.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/hal/release/libble_host_hal_series2.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/hci/release/libble_host_hci.a \
 $(SDK_PATH)/protocol/bluetooth/build/gcc/cortex-m33/ble_host/system/release/libble_system.a \
 $(SDK_PATH)/platform/radio/rail_lib/autogen/librail_release/librail_efr32xg22_gcc_release.a

LIBS += $(GROUP_START) $(PROJECT_LIBS) $(GROUP_END)

LIB_FILES += $(filter %.a, $(PROJECT_LIBS))

C_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c18 \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-lto \
 --specs=nano.specs

CXX_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -std=c++17 \
 -fno-rtti \
 -fno-exceptions \
 -Wall \
 -Wextra \
 -Os \
 -fdata-sections \
 -ffunction-sections \
 -fomit-frame-pointer \
 -g \
 -imacros sl_gcc_preinclude.h \
 -mcmse \
 -fno-lto \
 --specs=nano.specs

ASM_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -imacros sl_gcc_preinclude.h \
 -x assembler-with-cpp

LD_FLAGS += \
 -mcpu=cortex-m33 \
 -mthumb \
 -mfpu=fpv5-sp-d16 \
 -mfloat-abi=hard \
 -T"autogen/linkerfile.ld" \
 --specs=nano.specs \
 -Xlinker -Map=$(OUTPUT_DIR)/$(PROJECTNAME).map \
 -Wl,--wrap=_free_r -Wl,--wrap=_malloc_r -Wl,--wrap=_calloc_r -Wl,--wrap=_realloc_r \
 -Wl,--no-warn-rwx-segments \
 -fno-lto \
 -Wl,--gc-sections


####################################################################
# Pre/Post Build Rules                                             #
####################################################################
pre-build:
	# No pre-build defined

post-build: $(OUTPUT_DIR)/$(PROJECTNAME).out

####################################################################
# SDK Build Rules                                                  #
####################################################################
$(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o: $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.c
CDEPS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.d
OBJS += $(OUTPUT_DIR)/sdk/app/bluetooth/common/in_place_ota_dfu/sl_bt_in_place_ota_dfu.o

$(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o: $(SDK_PATH)/app/common/util/app_log/app_log.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_log/app_log.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_log/app_log.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_log/app_log.o

$(OUTPUT_DIR)/sdk/app/common/util/app_timer/bm/app_timer.o: $(SDK_PATH)/app/common/util/app_timer/bm/app_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/app/common/util/app_timer/bm/app_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/app/common/util/app_timer/bm/app_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/app/common/util/app_timer/bm/app_timer.d
OBJS += $(OUTPUT_DIR)/sdk/app/common/util/app_timer/bm/app_timer.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_stub.o: $(SDK_PATH)/hardware/board/src/sl_board_control_stub.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_control_stub.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_control_stub.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_stub.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_control_stub.o

$(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o: $(SDK_PATH)/hardware/board/src/sl_board_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/hardware/board/src/sl_board_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/hardware/board/src/sl_board_init.c
CDEPS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.d
OBJS += $(OUTPUT_DIR)/sdk/hardware/board/src/sl_board_init.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o: $(SDK_PATH)/platform/bootloader/api/btl_interface.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface.o

$(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o: $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/api/btl_interface_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/api/btl_interface_storage.o

$(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o: $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/bootloader/app_properties/app_properties.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.d
OBJS += $(OUTPUT_DIR)/sdk/platform/bootloader/app_properties/app_properties.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o: $(SDK_PATH)/platform/common/src/sl_assert.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_assert.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_assert.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_assert.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o: $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_core_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_core_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_core_cortexm.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o: $(SDK_PATH)/platform/common/src/sl_slist.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_slist.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_slist.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_slist.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o: $(SDK_PATH)/platform/common/src/sl_string.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_string.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_string.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_string.o

$(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o: $(SDK_PATH)/platform/common/src/sl_syscalls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/common/src/sl_syscalls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/common/src/sl_syscalls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/common/src/sl_syscalls.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/startup_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o: $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/Device/SiliconLabs/EFR32BG22/Source/system_efr32bg22.o

$(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o: $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/gpio/src/sl_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/gpio/src/sl_gpio.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_led.o

$(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o: $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/driver/leddrv/src/sl_simple_led.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.d
OBJS += $(OUTPUT_DIR)/sdk/platform/driver/leddrv/src/sl_simple_led.o

$(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o: $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/dmadrv/src/dmadrv.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/dmadrv/src/dmadrv.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_cache.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_cache.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_default_common_linker.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_default_common_linker.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_hal_flash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_hal_flash.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_lock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_lock.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_object.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_object.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_page.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_page.o

$(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o: $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emdrv/nvm3/src/nvm3_utils.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emdrv/nvm3/src/nvm3_utils.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o: $(SDK_PATH)/platform/emlib/src/em_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_burtc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o: $(SDK_PATH)/platform/emlib/src/em_cmu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_cmu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_cmu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_cmu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o: $(SDK_PATH)/platform/emlib/src/em_core.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_core.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_core.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_core.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o: $(SDK_PATH)/platform/emlib/src/em_emu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_emu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_emu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_emu.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o: $(SDK_PATH)/platform/emlib/src/em_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_gpio.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o: $(SDK_PATH)/platform/emlib/src/em_iadc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_iadc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_iadc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_iadc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o: $(SDK_PATH)/platform/emlib/src/em_ldma.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_ldma.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_ldma.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_ldma.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o: $(SDK_PATH)/platform/emlib/src/em_msc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_msc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_msc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_msc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o: $(SDK_PATH)/platform/emlib/src/em_prs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_prs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_prs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_prs.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o: $(SDK_PATH)/platform/emlib/src/em_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_rtcc.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o: $(SDK_PATH)/platform/emlib/src/em_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_system.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o: $(SDK_PATH)/platform/emlib/src/em_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_timer.o

$(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o: $(SDK_PATH)/platform/emlib/src/em_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/emlib/src/em_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/emlib/src/em_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/emlib/src/em_usart.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_gpio.o

$(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_system.o: $(SDK_PATH)/platform/peripheral/src/sl_hal_system.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/peripheral/src/sl_hal_system.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/peripheral/src/sl_hal_system.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_system.d
OBJS += $(OUTPUT_DIR)/sdk/platform/peripheral/src/sl_hal_system.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_conversions_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/pa-conversions/pa_curves_efr32.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_power_manager_init/sl_rail_util_power_manager_init.o

$(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o: $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.d
OBJS += $(OUTPUT_DIR)/sdk/platform/radio/rail_lib/plugin/rail_util_pti/sl_rail_util_pti.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_attestation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_entropy.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_key_handling.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sl_se_manager_util.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sl_se_manager_util.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o: $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/se_manager/src/sli_se_manager_mailbox.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_aes.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/cryptoacc_gcm.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ccm.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_cmac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/mbedtls_ecdsa_ecdh.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_mbedtls.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sl_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o: $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_mbedtls_support/src/sli_psa_crypto.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_protocol_crypto_radioaes.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o: $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_protocol_crypto/src/sli_radioaes_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/cryptoacc_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sl_psa_its_nvm3.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_driver_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_aead.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_cipher.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_hash.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_derivation.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_key_management.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_mac.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_cryptoacc_transparent_driver_signature.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_common.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_driver_init.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_psa_trng.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o: $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sl_psa_driver/src/sli_se_version_dependencies.o

$(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.o: $(SDK_PATH)/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/security/sl_component/sli_crypto/src/sl_crypto_s2.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init.o

$(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o: $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/clock_manager/src/sl_clock_manager_init_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o: $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_init/src/sl_device_init_dcdc_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_init/src/sl_device_init_dcdc_s2.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.o: $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/clocks/sl_device_clock_efr32xg22.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.o: $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/devices/sl_device_peripheral_hal_efr32xg22.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_clock.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_clock.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_gpio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_gpio.o

$(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o: $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/device_manager/src/sl_device_peripheral.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/device_manager/src/sl_device_peripheral.o

$(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o: $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/interrupt_manager/src/sl_interrupt_manager_cortexm.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_retarget_stdio.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_retarget_stdio.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_stdlib_config.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_stdlib_config.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_uart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_uart.o

$(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o: $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/iostream/src/sl_iostream_usart.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/iostream/src/sl_iostream_usart.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.o: $(SDK_PATH)/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/profiler/src/sli_memory_profiler_stubs.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_dynamic_reservation.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_pool_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_pool_common.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_region.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_region.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o: $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sl_memory_manager_retarget.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sl_memory_manager_retarget.o

$(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o: $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/memory_manager/src/sli_memory_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/memory_manager/src/sli_memory_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o: $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/mpu/src/sl_mpu.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/mpu/src/sl_mpu.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_common.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_common.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o: $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/common/sl_power_manager_em4.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/common/sl_power_manager_em4.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_debug.o

$(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o: $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/power_manager/src/sleep_loop/sl_power_manager_hal_s2.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_burtc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_prortc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_rtcc.o

$(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o: $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/sleeptimer/src/sl_sleeptimer_hal_timer.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o: $(SDK_PATH)/platform/service/system/src/sl_system_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_init.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_init.o

$(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o: $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/system/src/sl_system_process_action.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/system/src/sl_system_process_action.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay.c
CDEPS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay.o

$(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o: $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(ASMFLAGS) -c -o $@ $(SDK_PATH)/platform/service/udelay/src/sl_udelay_armv6m_gcc.S
ASMDEPS_S += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.d
OBJS += $(OUTPUT_DIR)/sdk/platform/service/udelay/src/sl_udelay_armv6m_gcc.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.o: $(SDK_PATH)/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/bgcommon/src/sli_bgcommon_debug_efr32.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o: $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_apploader_util_s2.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_apploader_util_s2.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o: $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sl_bt_stack_init.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sl_bt_stack_init.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_accept_list_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_accept_list_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_connection_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_connection_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_dynamic_gattdb_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_host_adaptation.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_host_adaptation.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_host_adaptation.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_host_adaptation.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_host_adaptation.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_host_adaptation.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_l2cap_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_l2cap_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_pawr_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_periodic_advertiser_config.o

$(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o: $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/protocol/bluetooth/src/sli_bt_sync_config.c
CDEPS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.d
OBJS += $(OUTPUT_DIR)/sdk/protocol/bluetooth/src/sli_bt_sync_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba414ep_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/ba431_config.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptodma_internal.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/cryptolib_types.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_aes.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_blk_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_dh_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_curves.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecc_keygen_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_ecdsa_alg.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_math.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_math.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_math.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_math.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_math.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_math.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcmp.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_memcpy.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_primitives.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_rng.o

$(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.o: $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/crypto_ip/libcryptosoc/src/sx_trng.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o: $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/cipher_wrap.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/cipher_wrap.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o: $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/constant_time.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/constant_time.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/platform_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/platform_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_aead.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_aead.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_cipher.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_cipher.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_client.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_client.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_driver_wrappers_no_static.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ecp.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ecp.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_ffdh.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_ffdh.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_hash.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_hash.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_mac.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_mac.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_pake.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_pake.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_rsa.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_rsa.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_se.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_se.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_slot_management.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_slot_management.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_crypto_storage.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_crypto_storage.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o: $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/psa_util.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/psa_util.o

$(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o: $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
	@$(POSIX_TOOL_PATH)echo 'Building $(SDK_PATH)/util/third_party/mbedtls/library/threading.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ $(SDK_PATH)/util/third_party/mbedtls/library/threading.c
CDEPS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.d
OBJS += $(OUTPUT_DIR)/sdk/util/third_party/mbedtls/library/threading.o

$(OUTPUT_DIR)/project/app.o: app.c
	@$(POSIX_TOOL_PATH)echo 'Building app.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app.c
CDEPS += $(OUTPUT_DIR)/project/app.d
OBJS += $(OUTPUT_DIR)/project/app.o

$(OUTPUT_DIR)/project/app_bm.o: app_bm.c
	@$(POSIX_TOOL_PATH)echo 'Building app_bm.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ app_bm.c
CDEPS += $(OUTPUT_DIR)/project/app_bm.d
OBJS += $(OUTPUT_DIR)/project/app_bm.o

$(OUTPUT_DIR)/project/autogen/gatt_db.o: autogen/gatt_db.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/gatt_db.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/gatt_db.c
CDEPS += $(OUTPUT_DIR)/project/autogen/gatt_db.d
OBJS += $(OUTPUT_DIR)/project/autogen/gatt_db.o

$(OUTPUT_DIR)/project/autogen/sl_bluetooth.o: autogen/sl_bluetooth.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_bluetooth.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_bluetooth.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_bluetooth.o

$(OUTPUT_DIR)/project/autogen/sl_board_default_init.o: autogen/sl_board_default_init.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_board_default_init.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_board_default_init.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_board_default_init.o

$(OUTPUT_DIR)/project/autogen/sl_event_handler.o: autogen/sl_event_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_event_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_event_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_event_handler.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o: autogen/sl_iostream_handles.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_handles.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_handles.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_handles.o

$(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o: autogen/sl_iostream_init_usart_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_iostream_init_usart_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_iostream_init_usart_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_iostream_init_usart_instances.o

$(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o: autogen/sl_power_manager_handler.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_power_manager_handler.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_power_manager_handler.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_power_manager_handler.o

$(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o: autogen/sl_simple_led_instances.c
	@$(POSIX_TOOL_PATH)echo 'Building autogen/sl_simple_led_instances.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ autogen/sl_simple_led_instances.c
CDEPS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.d
OBJS += $(OUTPUT_DIR)/project/autogen/sl_simple_led_instances.o

$(OUTPUT_DIR)/project/main.o: main.c
	@$(POSIX_TOOL_PATH)echo 'Building main.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ main.c
CDEPS += $(OUTPUT_DIR)/project/main.d
OBJS += $(OUTPUT_DIR)/project/main.o

$(OUTPUT_DIR)/project/sl_gatt_service_device_information.o: sl_gatt_service_device_information.c
	@$(POSIX_TOOL_PATH)echo 'Building sl_gatt_service_device_information.c'
	@$(POSIX_TOOL_PATH)mkdir -p $(@D)
	$(ECHO)$(CC) $(CFLAGS) -c -o $@ sl_gatt_service_device_information.c
CDEPS += $(OUTPUT_DIR)/project/sl_gatt_service_device_information.d
OBJS += $(OUTPUT_DIR)/project/sl_gatt_service_device_information.o

# Automatically-generated Simplicity Studio Metadata
# Please do not edit or delete these lines!
# SIMPLICITY_STUDIO_METADATA=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END_SIMPLICITY_STUDIO_METADATA
# END OF METADATA