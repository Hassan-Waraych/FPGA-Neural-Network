set_property SRC_FILE_INFO {cfile:c:/VivadoProjects/zybo_perceptron/zybo_perceptron.srcs/sources_1/bd/system/ip/system_processing_system7_0_0_1/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc rfile:../../../zybo_perceptron.srcs/sources_1/bd/system/ip/system_processing_system7_0_0_1/system_processing_system7_0_0/system_processing_system7_0_0_in_context.xdc id:1 order:EARLY scoped_inst:system_i/processing_system7_0} [current_design]
set_property SRC_FILE_INFO {cfile:C:/VivadoProjects/zybo_perceptron/zybo_perceptron.srcs/constrs_1/new/constraints.xdc rfile:../../../zybo_perceptron.srcs/constrs_1/new/constraints.xdc id:2} [current_design]
current_instance system_i/processing_system7_0
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 20.000 [get_ports {}]
current_instance
set_property src_info {type:XDC file:2 line:12 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw_0[0] }]; #IO_L19N_T3_VREF_35 Sch=sw[0]
set_property src_info {type:XDC file:2 line:13 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw_0[1] }]; #IO_L24P_T3_34 Sch=sw[1]
set_property src_info {type:XDC file:2 line:14 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { mode_0 }]; #IO_L4N_T0_34 Sch=mode
set_property src_info {type:XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led0_0 }]; #IO_L23P_T3_35 Sch=led0
