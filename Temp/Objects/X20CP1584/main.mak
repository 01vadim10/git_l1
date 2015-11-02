SHELL = cmd.exe
CYGWIN=nontsec
export PATH := C:\ProgramData\Oracle\Java\javapath;C:\Program Files (x86)\Intel\iCLS Client\;C:\Program Files\Intel\iCLS Client\;C:\Windows\system32;C:\Windows;C:\Windows\System32\Wbem;C:\Windows\System32\WindowsPowerShell\v1.0\;C:\Program Files\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\DAL;C:\Program Files\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Intel\Intel(R) Management Engine Components\IPT;C:\Program Files (x86)\Skype\Phone\;C:\Program Files (x86)\AMD\ATI.ACE\Core-Static;C:\Program Files (x86)\Windows Kits\8.1\Windows Performance Toolkit\;C:\Program Files\Microsoft SQL Server\110\Tools\Binn\;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode;C:\Program Files (x86)\Common Files\Hilscher GmbH\TLRDecode
export AS_BUILD_MODE := Build
export AS_VERSION := 4.2.2.134
export AS_COMPANY_NAME :=  
export AS_USER_NAME := vzylevich
export AS_PATH := C:/Program\ Files/BrAutomation/AS42
export AS_BIN_PATH := C:/Program Files/BrAutomation/AS42/Bin-en
export AS_PROJECT_PATH := D:/Work/Projects/Nerehta_Forming
export AS_PROJECT_NAME := Nerehta_Forming
export AS_SYSTEM_PATH := C:/Program\ Files/BrAutomation/AS/System
export AS_VC_PATH := C:/Program\ Files/BrAutomation/AS42/AS/VC
export AS_TEMP_PATH := D:/Work/Projects/Nerehta_Forming/Temp
export AS_CONFIGURATION := X20CP1584
export AS_BINARIES_PATH := D:/Work/Projects/Nerehta_Forming/Binaries
export AS_GNU_INST_PATH := C:/Program\ Files/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH := $(AS_GNU_INST_PATH)/bin
export AS_GNU_INST_PATH_SUB_MAKE := C:/Program Files/BrAutomation/AS42/AS/GnuInst/V4.1.2
export AS_GNU_BIN_PATH_SUB_MAKE := $(AS_GNU_INST_PATH_SUB_MAKE)/bin
export AS_INSTALL_PATH := C:/Program\ Files/BrAutomation/AS42
export WIN32_AS_PATH := "C:\Program Files\BrAutomation\AS42"
export WIN32_AS_BIN_PATH := "C:\Program Files\BrAutomation\AS42\Bin-en"
export WIN32_AS_PROJECT_PATH := "D:\Work\Projects\Nerehta_Forming"
export WIN32_AS_SYSTEM_PATH := "C:\Program Files\BrAutomation\AS\System"
export WIN32_AS_VC_PATH := "C:\Program Files\BrAutomation\AS42\AS\VC"
export WIN32_AS_TEMP_PATH := "D:\Work\Projects\Nerehta_Forming\Temp"
export WIN32_AS_BINARIES_PATH := "D:\Work\Projects\Nerehta_Forming\Binaries"
export WIN32_AS_GNU_INST_PATH := "C:\Program Files\BrAutomation\AS42\AS\GnuInst\V4.1.2"
export WIN32_AS_GNU_BIN_PATH := "$(WIN32_AS_GNU_INST_PATH)\\bin" 
export WIN32_AS_INSTALL_PATH := "C:\Program Files\BrAutomation\AS42"

.suffixes:

ProjectMakeFile:

	@"$(AS_BIN_PATH)/BR.AS.AnalyseProject.exe" "$(AS_PROJECT_PATH)/Nerehta_Forming.apj" -t "$(AS_TEMP_PATH)" -c "$(AS_CONFIGURATION)" -o "$(AS_BINARIES_PATH)"   -sfas -buildMode "Build" 

	@$(AS_GNU_BIN_PATH)/mingw32-make.exe -r -f 'D:/Work/Projects/Nerehta_Forming/Temp/Objects/$(AS_CONFIGURATION)/X20CP1584/#cpu.mak' -k 

