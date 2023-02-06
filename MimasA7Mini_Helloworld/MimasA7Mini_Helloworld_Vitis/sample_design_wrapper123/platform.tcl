# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct G:\Sample_codes\Mimas_mini\MimasA7Mini_Microblaze_Helloworld\v\sample_design_wrapper123\platform.tcl
# 
# OR launch xsct and run below command.
# source G:\Sample_codes\Mimas_mini\MimasA7Mini_Microblaze_Helloworld\v\sample_design_wrapper123\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {sample_design_wrapper123}\
-hw {G:\Sample_codes\Mimas_mini\MimasA7Mini_Microblaze_Helloworld\sample_design_wrapper123.xsa}\
-out {G:/Sample_codes/Mimas_mini/MimasA7Mini_Microblaze_Helloworld/v}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {hello_world}
platform generate -domains 
platform active {sample_design_wrapper123}
platform generate -quick
platform generate
platform generate
