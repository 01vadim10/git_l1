UnmarkedObjectFolder := D:/Work/Projects/Nerehta_Forming/Logical/Excavator
MarkedObjectFolder := D:/Work/Projects/Nerehta_Forming/Logical/Excavator

$(AS_CPU_PATH)/Excavator.br: \
	$(AS_PROJECT_CPU_PATH)/Cpu.per \
	FORCE \
	$(AS_CPU_PATH)/Excavator/Excavator.ox
	@"$(AS_BIN_PATH)/BR.AS.TaskBuilder.exe" "$(AS_CPU_PATH)/Excavator/Excavator.ox" -o "$(AS_CPU_PATH)/Excavator.br" -v V1.00.0 -f "$(AS_CPU_PATH)/NT.ofs" -offsetLT "$(AS_BINARIES_PATH)/$(AS_CONFIGURATION)/$(AS_PLC)/LT.ofs" -T SG4  -M IA32  -B D4.22 -extConstants -r Cyclic4 -p 2 -s "Excavator" -L "AsIecCon: V*, astime: V*, Operator: V*, Runtime: V*" -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.taskbuilder.exe"

$(AS_CPU_PATH)/Excavator/Excavator.ox: \
	$(AS_CPU_PATH)/Excavator/a.out \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.Backend.exe" "$(AS_CPU_PATH)/Excavator/a.out" -o "$(AS_CPU_PATH)/Excavator/Excavator.ox" -T SG4 -r Cyclic4   -G V4.1.2  -secret "$(AS_PROJECT_PATH)_br.as.backend.exe"

$(AS_CPU_PATH)/Excavator/a.out: \
	$(AS_CPU_PATH)/Excavator/Cyclic.c.o \
	$(AS_CPU_PATH)/Excavator/Init.c.o \
	$(AS_CPU_PATH)/Excavator/Exit.c.o \
	FORCE
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" -link "$(AS_CPU_PATH)/Excavator/Cyclic.c.o" "$(AS_CPU_PATH)/Excavator/Init.c.o" "$(AS_CPU_PATH)/Excavator/Exit.c.o"  -o "$(AS_CPU_PATH)/Excavator/a.out"  -G V4.1.2  -T SG4  -M IA32  "-Wl,$(AS_SYSTEM_PATH)/D0422/SG4/IA32/libAsIecCon.a" "-Wl,$(AS_SYSTEM_PATH)/D0422/SG4/IA32/libastime.a" "-Wl,$(AS_SYSTEM_PATH)/D0422/SG4/IA32/libOperator.a" "-Wl,$(AS_SYSTEM_PATH)/D0422/SG4/IA32/libRuntime.a" -specs=I386specs -Wl,-q,-T,bur_elf_i386.x -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Excavator/Cyclic.c.o: \
	$(AS_PROJECT_PATH)/Logical/Excavator/Cyclic.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Excavator/Cyclic.c" -o "$(AS_CPU_PATH)/Excavator/Cyclic.c.o"  -T SG4  -M IA32  -B D4.22 -G V4.1.2  -s "Excavator" -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/Excavator" "$(AS_TEMP_PATH)/Includes/Excavator" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Excavator/Init.c.o: \
	$(AS_PROJECT_PATH)/Logical/Excavator/Init.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Excavator/Init.c" -o "$(AS_CPU_PATH)/Excavator/Init.c.o"  -T SG4  -M IA32  -B D4.22 -G V4.1.2  -s "Excavator" -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/Excavator" "$(AS_TEMP_PATH)/Includes/Excavator" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

$(AS_CPU_PATH)/Excavator/Exit.c.o: \
	$(AS_PROJECT_PATH)/Logical/Excavator/Exit.c \
	FORCE 
	@"$(AS_BIN_PATH)/BR.AS.CCompiler.exe" "$(AS_PROJECT_PATH)/Logical/Excavator/Exit.c" -o "$(AS_CPU_PATH)/Excavator/Exit.c.o"  -T SG4  -M IA32  -B D4.22 -G V4.1.2  -s "Excavator" -t "$(AS_TEMP_PATH)" -I "$(AS_PROJECT_PATH)/Logical/Excavator" "$(AS_TEMP_PATH)/Includes/Excavator" "$(AS_TEMP_PATH)/Includes" -trigraphs -fno-asm -D _DEFAULT_INCLUDES -D _SG4 -fPIC -O0 -g -Wall -include "$(AS_CPU_PATH)/Libraries.h" -x c -P "$(AS_PROJECT_PATH)" -secret "$(AS_PROJECT_PATH)_br.as.ccompiler.exe"

-include $(AS_CPU_PATH)/Force.mak 



FORCE: