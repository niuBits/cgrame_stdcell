#!/usr/bin/tclsh

read_verilog ./source/verilog/cgra.v
link_design -keep_sub_designs cgra
current_design cgra
read_parasitics -format SPEF ./source/spef/cgra.spef

#TODO: Verify if 1.8GHz can be met
#Specify 500MHz CGRA_Clock
########create_clock -period 2 -waveform [list 0 10] [list CGRA_Clock]
create_clock -period 2 [get_ports CGRA_Clock]
set_clock_latency 0.25 [get_clocks CGRA_Clock]
set_clock_transition 0.02 [get_clocks CGRA_Clock]
set_clock_uncertainty 0.12 -setup [get_clocks CGRA_Clock]
set_clock_uncertainty 0.05 -hold [get_clocks CGRA_Clock]

##Specify 1.8GHz CGRA_Clock
#create_clock -period 0.55 -waveform [list 0 10] [list CGRA_Clock]
#set_clock_latency 0.07 [get_clocks CGRA_Clock]
#set_clock_transition 0.006 [get_clocks CGRA_Clock]
#set_clock_uncertainty 0.04 -setup [get_clocks CGRA_Clock]
#set_clock_uncertainty 0.02 -hold [get_clocks CGRA_Clock]

#Specify 50MHz Config_Clock
create_clock -period 20 [get_ports Config_Clock]
set_clock_latency 2.5 [get_clocks Config_Clock]
set_clock_transition 0.2 [get_clocks Config_Clock]
set_clock_uncertainty 1.2 -setup [get_clocks Config_Clock]
set_clock_uncertainty 0.5 -hold [get_clocks Config_Clock]

#Read Synopsys Design Constraints
#source ./const/adres.sdc
#source ./const/conv2.sdc
#source ./const/conv3.sdc
#source ./const/mac.sdc
#source ./const/mults1.sdc
#source ./const/nomem1.sdc
#source ./const/simple.sdc
#source ./const/simple2.sdc
#source ./const/sum.sdc

#Report Timing: (`-max_paths` specifies the numbers of reported worst cases)
#    1) primary inputs -> FFs
#    2) FFs -> FFs
#    3) FFs -> primary outputs
#    4) primary inputs -> primary outputs
report_timing -from [all_inputs] -max_paths 20 -to [all_registers -data_pins] >> ./reports/timing_ins2regs.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_registers -data_pins] >> ./reports/timing_regs2regs.rpt
report_timing -from [all_registers -clock_pins] -max_paths 20 -to [all_outputs] >> ./reports/timing_regs2outs.rpt
report_timing -from [all_inputs] -to [all_outputs] -max_paths 20  >> ./reports/timing_ins2outs.rpt

#Report Setup Time
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type max >> ./reports/timing_setup.rpt

#Report Hold Time
report_timing -from [all_registers -clock_pins] -to [all_registers -data_pins] -delay_type min >> ./reports/timing_hold.rpt

#Report Capacitance Transition Time at Each Level
report_timing -transition_time -capacitance -nets -input_pins -from [all_registers -clock_pins] -to [all_registers -data_pins] >> ./reports/timing_capTrans.rpt
