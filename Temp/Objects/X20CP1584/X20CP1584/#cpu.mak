SHELL = cmd.exe
export AS_PLC := X20CP1584
export AS_TEMP_PLC := X20CP1584
export AS_CPU_PATH := $(AS_TEMP_PATH)/Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export AS_CPU_PATH_2 := D:/Work/Projects/Nerehta_Forming/Temp//Objects/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export AS_PROJECT_CONFIG_PATH := $(AS_PROJECT_PATH)/Physical/$(AS_CONFIGURATION)
export AS_PROJECT_CPU_PATH := $(AS_PROJECT_CONFIG_PATH)/$(AS_PLC)
export AS_STATIC_ARCHIVES_PATH := $(AS_TEMP_PATH)/Archives/$(AS_CONFIGURATION)/$(AS_TEMP_PLC)
export WIN32_AS_CPU_PATH := $(WIN32_AS_TEMP_PATH)\Objects\$(AS_CONFIGURATION)\$(AS_TEMP_PLC)
export WIN32_AS_ACTIVE_CONFIG_PATH := $(WIN32_AS_PROJECT_PATH)\Physical\$(AS_CONFIGURATION)\$(AS_PLC)


CpuMakeFile: \
$(AS_CPU_PATH)/ashwd.br \
$(AS_CPU_PATH)/asfw.br \
$(AS_CPU_PATH)/sysconf.br \
$(AS_CPU_PATH)/arconfig.br \
$(AS_CPU_PATH)/Excavator.br \
$(AS_CPU_PATH)/Conveyor.br \
$(AS_CPU_PATH)/FeederBunk.br \
$(AS_CPU_PATH)/Mixer.br \
$(AS_CPU_PATH)/GrinderCla.br \
$(AS_CPU_PATH)/PressScrew.br \
$(AS_CPU_PATH)/Control.br \
$(AS_CPU_PATH)/iomap.br \
$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst


$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/Transfer.lst: \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.FinalizeBuild.exe" "$(AS_PROJECT_PATH)/Nerehta_Forming.apj" -t "$(AS_TEMP_PATH)" -o "$(AS_BINARIES_PATH)" -c "$(AS_CONFIGURATION)" -i "C:/Program Files/BrAutomation/AS42" -S "X20CP1584"  -all -A "X20CP1584" -pil   -swFiles "$(AS_PROJECT_PATH)/Physical/X20CP1584/X20CP1584/Cpu.sw" -C "/RT=1000 /AM=*" -D "/IF=COM1 /BD=57600 /PA=2 /IT=20 /RS=0" -M IA32 -T SG4

#nothing to do (just call module make files)

include $(AS_CPU_PATH)/iomap/iomap.mak
include $(AS_CPU_PATH)/Control/Control.mak
include $(AS_CPU_PATH)/PressScrew/PressScrew.mak
include $(AS_CPU_PATH)/GrinderCla/GrinderCla.mak
include $(AS_CPU_PATH)/Mixer/Mixer.mak
include $(AS_CPU_PATH)/FeederBunk/FeederBunk.mak
include $(AS_CPU_PATH)/Conveyor/Conveyor.mak
include $(AS_CPU_PATH)/Excavator/Excavator.mak
include $(AS_CPU_PATH)/arconfig/arconfig.mak
include $(AS_CPU_PATH)/sysconf/sysconf.mak
include $(AS_CPU_PATH)/asfw/asfw.mak
include $(AS_CPU_PATH)/ashwd/ashwd.mak

.DEFAULT:
#nothing to do (need this target for prerequisite files that don't exit)

FORCE:
