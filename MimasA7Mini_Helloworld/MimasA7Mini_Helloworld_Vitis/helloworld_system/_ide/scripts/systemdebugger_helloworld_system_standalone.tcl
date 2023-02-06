# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: G:\gitlab\samplecode-fpga\MimasA7_Mini\MimasA7Mini_Microblaze_Helloworld\MimasA7Mini_Helloworld_Vitis\helloworld_system\_ide\scripts\systemdebugger_helloworld_system_standalone.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source G:\gitlab\samplecode-fpga\MimasA7_Mini\MimasA7Mini_Microblaze_Helloworld\MimasA7Mini_Helloworld_Vitis\helloworld_system\_ide\scripts\systemdebugger_helloworld_system_standalone.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Xilinx Virtual Cable localhost:2542" && level==0 && jtag_device_ctx=="jsn-XVC-localhost:2542-0362d093-0"}
fpga -file G:/gitlab/samplecode-fpga/MimasA7_Mini/MimasA7Mini_Microblaze_Helloworld/MimasA7Mini_Helloworld_Vitis/helloworld/_ide/bitstream/download.bit
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
loadhw -hw G:/Sample_codes/Mimas_mini/MimasA7Mini_Microblaze_Helloworld/MimasA7Mini_Microblaze_Helloworld/VITIS/sample_design_wrapper123/export/sample_design_wrapper123/hw/sample_design_wrapper123.xsa -regs
configparams mdm-detect-bscan-mask 2
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
rst -system
after 3000
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
dow G:/gitlab/samplecode-fpga/MimasA7_Mini/MimasA7Mini_Microblaze_Helloworld/MimasA7Mini_Helloworld_Vitis/helloworld/Debug/helloworld.elf
targets -set -nocase -filter {name =~ "*microblaze*#0" && bscan=="USER2" }
con
