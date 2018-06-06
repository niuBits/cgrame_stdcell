#!/usr/bin/tclsh

puts "######## - ########"
set_false_path -from Config_Clock -to *
set_false_path -from ConfigIn -to *
set_false_path -from CGRA_Reset -to *
set_disable_timing */mux_bypass
#set_false_path -through pe_c*_r*/mux_bypass/* -to pe_c*_r*/in*
#set_false_path -from pe_c*_r*/mux_bypass/* -to pe_c*_r*/mux_bypass/*
#set_false_path -through pe_c*_r*/out -to *
puts "######## - ########"
