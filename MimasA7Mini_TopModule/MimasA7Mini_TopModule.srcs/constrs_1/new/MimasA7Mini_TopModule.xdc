####################################################################################################################                                               
#                                               CLOCK 100MHz and Reset                                             #                                               
####################################################################################################################                                               
set_property -dict { PACKAGE_PIN "N11"    IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { clk }]     ;                # IO_L13P_T2_MRCC_14            Sch = CLK  
                                                                                                                                                                   
set_property -dict { PACKAGE_PIN "N6"     IOSTANDARD LVCMOS33       SLEW FAST} [get_ports { rst }];                     # IO_L13P_T2_MRCC_35            Sch = SW0  
                                                                                                                                                                   
####################################################################################################################                                               
#                                               LEDs                                                               #                                               
####################################################################################################################                                               
set_property -dict { PACKAGE_PIN "K12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[0] }];                      # IO_0_14                       Sch = LED0 
set_property -dict { PACKAGE_PIN "K13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[1] }];                      # IO_L5P_T0_D06_14              Sch = LED1 
set_property -dict { PACKAGE_PIN "R10"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[2] }];                      # IO_L17P_T2_A14_D30_14         Sch = LED2 
set_property -dict { PACKAGE_PIN "R13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[3] }];                      # IO_L16P_T2_CSI_14             Sch = LED3 
set_property -dict { PACKAGE_PIN "T13"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[4] }];                      # IO_L16N_T2_A15_D31_14         Sch = LED4 
set_property -dict { PACKAGE_PIN "R12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[5] }];                      # IO_L15P_T2_DQS_RDWR_B_14      Sch = LED5 
set_property -dict { PACKAGE_PIN "T12"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[6] }];                      # IO_L15N_T2_DQS_DOUT_CSO_B_14  Sch = LED6 
set_property -dict { PACKAGE_PIN "R11"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { LED[7] }];                      # IO_L17N_T2_A13_D29_14         Sch = LED7 
                                                                                                                                                                   
####################################################################################################################                                               
#                                               Push Buttons                                                       #                                               
####################################################################################################################  
set_property -dict { PACKAGE_PIN "F5"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw[2] }];                        # IO_L13P_T2_MRCC_35            Sch = SW0                                             
set_property -dict { PACKAGE_PIN "J4"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw[1] }];                        # IO_L19N_T3_VREF_35            Sch = SW1  
set_property -dict { PACKAGE_PIN "M6"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { sw[0] }];                        # IO_L19P_T3_A10_D26_14         Sch = SW2  
                                                                                                                                                                   
####################################################################################################################                                               
#                                               RGB LED                                                            #                                               
####################################################################################################################                                               
set_property -dict { PACKAGE_PIN "M15"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { RGB[0] }];                      # IO_L3N_T0_DQS_EMCCLK_14       Sch = LED_R
set_property -dict { PACKAGE_PIN "L14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { RGB[1] }];                      # IO_L4P_T0_D04_14              Sch = LED_G
set_property -dict { PACKAGE_PIN "M14"   IOSTANDARD LVCMOS33    SLEW FAST} [get_ports { RGB[2] }];                      # IO_L4N_T0_D05_14              Sch = LED_B