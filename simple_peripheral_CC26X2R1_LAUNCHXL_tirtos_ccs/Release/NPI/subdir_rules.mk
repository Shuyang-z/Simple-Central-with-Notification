################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
NPI/npi_frame_hci.obj: C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/npi_frame_hci.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/bin/armcl" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/posix/ccs" --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="NPI/$(basename $(<F)).d_raw" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="NPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

NPI/npi_rxbuf.obj: C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/npi_rxbuf.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/bin/armcl" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/posix/ccs" --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="NPI/$(basename $(<F)).d_raw" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="NPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

NPI/npi_task.obj: C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/npi_task.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/bin/armcl" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/posix/ccs" --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="NPI/$(basename $(<F)).d_raw" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="NPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

NPI/npi_tl.obj: C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/npi_tl.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/bin/armcl" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/posix/ccs" --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="NPI/$(basename $(<F)).d_raw" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="NPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

NPI/npi_tl_uart.obj: C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/npi_tl_uart.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/bin/armcl" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_ble_app_config.opt" --cmd_file="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg/ti_build_config.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/build_components.opt" --cmd_file="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/config/factory_config.opt"  -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me -O4 --opt_for_speed=0 --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Application" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/npi/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx/rcosc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/kernel/tirtos/packages" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/controller/cc26xx/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/rom" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/target/_common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/hal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/heapmgr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/dev_info" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/profiles/simple_profile" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/icall/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/osal/src/inc" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/saddr" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/ble5stack/services/src/sdata" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/nv" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/common/cc26xx" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/devices/cc13x2_cc26x2" --include_path="C:/ti/simplelink_cc13x2_26x2_sdk_4_30_00_54/source/ti/posix/ccs" --include_path="C:/ti/ccs1011/ccs/tools/compiler/ti-cgt-arm_20.2.1.LTS/include" --define=DeviceFamily_CC26X2 --define=FLASH_ROM_BUILD --define=NVOCMP_NWSAMEITEM=1 -g --c99 --gcc --diag_warning=225 --diag_warning=255 --diag_wrap=off --display_error_number --gen_func_subsections=on --abi=eabi --preproc_with_compile --preproc_dependency="NPI/$(basename $(<F)).d_raw" --include_path="C:/Users/a0222721/workspace_v10_temp/simple_peripheral_CC26X2R1_LAUNCHXL_tirtos_ccs/Release/syscfg" --obj_directory="NPI" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


