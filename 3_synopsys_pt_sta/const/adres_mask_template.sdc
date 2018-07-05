#!/usr/bin/tclsh

set_false_path -from Config_Clock -to *
set_false_path -from ConfigIn -to *
set_false_path -from CGRA_Reset -to *
puts "######## BEGIN ########"
puts "######## Disabling Unused Blocks ########"
#TODO: Comment Out Used PEs From Below
set_disable_timing pe_c0_r0
set_disable_timing pe_c0_r0/*
set_disable_timing pe_c0_r0/*/*
set_disable_timing pe_c0_r0/*/*/*
set_disable_timing pe_c0_r1
set_disable_timing pe_c0_r1/*
set_disable_timing pe_c0_r1/*/*
set_disable_timing pe_c0_r1/*/*/*
set_disable_timing pe_c0_r2
set_disable_timing pe_c0_r2/*
set_disable_timing pe_c0_r2/*/*
set_disable_timing pe_c0_r2/*/*/*
set_disable_timing pe_c0_r3
set_disable_timing pe_c0_r3/*
set_disable_timing pe_c0_r3/*/*
set_disable_timing pe_c0_r3/*/*/*
set_disable_timing pe_c1_r0
set_disable_timing pe_c1_r0/*
set_disable_timing pe_c1_r0/*/*
set_disable_timing pe_c1_r0/*/*/*
set_disable_timing pe_c1_r1
set_disable_timing pe_c1_r1/*
set_disable_timing pe_c1_r1/*/*
set_disable_timing pe_c1_r1/*/*/*
set_disable_timing pe_c1_r2
set_disable_timing pe_c1_r2/*
set_disable_timing pe_c1_r2/*/*
set_disable_timing pe_c1_r2/*/*/*
set_disable_timing pe_c1_r3
set_disable_timing pe_c1_r3/*
set_disable_timing pe_c1_r3/*/*
set_disable_timing pe_c1_r3/*/*/*
set_disable_timing pe_c2_r0
set_disable_timing pe_c2_r0/*
set_disable_timing pe_c2_r0/*/*
set_disable_timing pe_c2_r0/*/*/*
set_disable_timing pe_c2_r1
set_disable_timing pe_c2_r1/*
set_disable_timing pe_c2_r1/*/*
set_disable_timing pe_c2_r1/*/*/*
set_disable_timing pe_c2_r2
set_disable_timing pe_c2_r2/*
set_disable_timing pe_c2_r2/*/*
set_disable_timing pe_c2_r2/*/*/*
set_disable_timing pe_c2_r3
set_disable_timing pe_c2_r3/*
set_disable_timing pe_c2_r3/*/*
set_disable_timing pe_c2_r3/*/*/*
set_disable_timing pe_c3_r0
set_disable_timing pe_c3_r0/*
set_disable_timing pe_c3_r0/*/*
set_disable_timing pe_c3_r0/*/*/*
set_disable_timing pe_c3_r1
set_disable_timing pe_c3_r1/*
set_disable_timing pe_c3_r1/*/*
set_disable_timing pe_c3_r1/*/*/*
set_disable_timing pe_c3_r2
set_disable_timing pe_c3_r2/*
set_disable_timing pe_c3_r2/*/*
set_disable_timing pe_c3_r2/*/*/*
set_disable_timing pe_c3_r3
set_disable_timing pe_c3_r3/*
set_disable_timing pe_c3_r3/*/*
set_disable_timing pe_c3_r3/*/*/*

# Use the following command to list used PEs:
# grep -r "0:\<pe_c.*_r.*\>" mapping_res.txt | awk -F '.' '{print $1}' | sort | uniq | head -nX | awk -F':' '{print $2}'
puts "######## Setting Correct Mux Select Signals ########"
#TODO: Invert Commented Section for Used Muxes
#MemPort Configuration
#MEMPORT_0
#mem_0_mux_addr      mux_4to1_32b 0
#set_case_analysis 0 mem_0_mux_addr/select[0]
#set_case_analysis 0 mem_0_mux_addr/select[1]
#set_disable_timing mem_0_mux_addr/in0
#set_disable_timing mem_0_mux_addr/in1
#set_disable_timing mem_0_mux_addr/in2
#set_disable_timing mem_0_mux_addr/in3
#mem_0_mux_addr      mux_4to1_32b UNUSED
set_disable_timing mem_0_mux_addr
set_disable_timing mem_0_mux_addr/*
#mem_0_mux_data      mux_4to1_32b 0
#set_case_analysis 0 mem_0_mux_data/select[0]
#set_case_analysis 0 mem_0_mux_data/select[1]
#set_disable_timing mem_0_mux_data/in0
#set_disable_timing mem_0_mux_data/in1
#set_disable_timing mem_0_mux_data/in2
#set_disable_timing mem_0_mux_data/in3
#mem_0_mux_data      mux_4to1_32b UNUSED
set_disable_timing mem_0_mux_data
set_disable_timing mem_0_mux_data/*

#MEMPORT_1
#mem_1_mux_addr      mux_4to1_32b 0
#set_case_analysis 0 mem_1_mux_addr/select[0]
#set_case_analysis 0 mem_1_mux_addr/select[1]
#set_disable_timing mem_1_mux_addr/in0
#set_disable_timing mem_1_mux_addr/in1
#set_disable_timing mem_1_mux_addr/in2
#set_disable_timing mem_1_mux_addr/in3
#mem_1_mux_addr      mux_4to1_32b UNUSED
set_disable_timing mem_1_mux_addr
set_disable_timing mem_1_mux_addr/*
#mem_1_mux_data      mux_4to1_32b 0
#set_case_analysis 0 mem_1_mux_data/select[0]
#set_case_analysis 0 mem_1_mux_data/select[1]
#set_disable_timing mem_1_mux_data/in0
#set_disable_timing mem_1_mux_data/in1
#set_disable_timing mem_1_mux_data/in2
#set_disable_timing mem_1_mux_data/in3
#mem_1_mux_data      mux_4to1_32b UNUSED
set_disable_timing mem_1_mux_data
set_disable_timing mem_1_mux_data/*

#MEMPORT_2
#mem_2_mux_addr      mux_4to1_32b 0
#set_case_analysis 0 mem_2_mux_addr/select[0]
#set_case_analysis 0 mem_2_mux_addr/select[1]
#set_disable_timing mem_2_mux_addr/in0
#set_disable_timing mem_2_mux_addr/in1
#set_disable_timing mem_2_mux_addr/in2
#set_disable_timing mem_2_mux_addr/in3
#mem_2_mux_addr      mux_4to1_32b UNUSED
set_disable_timing mem_2_mux_addr
set_disable_timing mem_2_mux_addr/*
#mem_2_mux_data      mux_4to1_32b 0
#set_case_analysis 0 mem_2_mux_data/select[0]
#set_case_analysis 0 mem_2_mux_data/select[1]
#set_disable_timing mem_2_mux_data/in0
#set_disable_timing mem_2_mux_data/in1
#set_disable_timing mem_2_mux_data/in2
#set_disable_timing mem_2_mux_data/in3
#mem_2_mux_data      mux_4to1_32b UNUSED
set_disable_timing mem_2_mux_data
set_disable_timing mem_2_mux_data/*

#MEMPORT_3
#mem_3_mux_addr      mux_4to1_32b 0
#set_case_analysis 0 mem_3_mux_addr/select[0]
#set_case_analysis 0 mem_3_mux_addr/select[1]
#set_disable_timing mem_3_mux_addr/in0
#set_disable_timing mem_3_mux_addr/in1
#set_disable_timing mem_3_mux_addr/in2
#set_disable_timing mem_3_mux_addr/in3
#mem_3_mux_addr      mux_4to1_32b UNUSED
set_disable_timing mem_3_mux_addr
set_disable_timing mem_3_mux_addr/*
#mem_3_mux_data      mux_4to1_32b 0
#set_case_analysis 0 mem_3_mux_data/select[0]
#set_case_analysis 0 mem_3_mux_data/select[1]
#set_disable_timing mem_3_mux_data/in0
#set_disable_timing mem_3_mux_data/in1
#set_disable_timing mem_3_mux_data/in2
#set_disable_timing mem_3_mux_data/in3
#mem_3_mux_data      mux_4to1_32b UNUSED
set_disable_timing mem_3_mux_data
set_disable_timing mem_3_mux_data/*

#PE Configuration
#pe_c0_r*
#pe_c0_r0
#pe_c0_r0/mux_a      mux_8to1_32b 0
#set_case_analysis 0 pe_c0_r0/mux_a/select[0]
#set_case_analysis 0 pe_c0_r0/mux_a/select[1]
#set_case_analysis 0 pe_c0_r0/mux_a/select[2]
#set_disable_timing pe_c0_r0/mux_a/in0
#set_disable_timing pe_c0_r0/mux_a/in1
#set_disable_timing pe_c0_r0/mux_a/in2
#set_disable_timing pe_c0_r0/mux_a/in3
#set_disable_timing pe_c0_r0/mux_a/in4
#set_disable_timing pe_c0_r0/mux_a/in5
#set_disable_timing pe_c0_r0/mux_a/in6
#set_disable_timing pe_c0_r0/mux_a/in7
#pe_c0_r0/mux_a      mux_8to1_32b UNUSED
set_disable_timing pe_c0_r0/mux_a
set_disable_timing pe_c0_r0/mux_a/*

#pe_c0_r0/mux_b      mux_8to1_32b 1
#set_case_analysis 1 pe_c0_r0/mux_b/select[0]
#set_case_analysis 0 pe_c0_r0/mux_b/select[1]
#set_case_analysis 0 pe_c0_r0/mux_b/select[2]
#set_disable_timing pe_c0_r0/mux_b/in0
#set_disable_timing pe_c0_r0/mux_b/in1
#set_disable_timing pe_c0_r0/mux_b/in2
#set_disable_timing pe_c0_r0/mux_b/in3
#set_disable_timing pe_c0_r0/mux_b/in4
#set_disable_timing pe_c0_r0/mux_b/in5
#set_disable_timing pe_c0_r0/mux_b/in6
#set_disable_timing pe_c0_r0/mux_b/in7
#pe_c0_r0/mux_b      mux_8to1_32b UNUSED
set_disable_timing pe_c0_r0/mux_b
set_disable_timing pe_c0_r0/mux_b/*

#pe_c0_r0/mux_bypass mux_6to1_32b 0
#set_case_analysis 0 pe_c0_r0/mux_bypass/select[0]
#set_case_analysis 0 pe_c0_r0/mux_bypass/select[1]
#set_case_analysis 0 pe_c0_r0/mux_bypass/select[2]
#set_disable_timing pe_c0_r0/mux_bypass/in0
#set_disable_timing pe_c0_r0/mux_bypass/in1
#set_disable_timing pe_c0_r0/mux_bypass/in2
#set_disable_timing pe_c0_r0/mux_bypass/in3
#set_disable_timing pe_c0_r0/mux_bypass/in4
#set_disable_timing pe_c0_r0/mux_bypass/in5
#pe_c0_r0/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c0_r0/mux_bypass
set_disable_timing pe_c0_r0/mux_bypass/*

#pe_c0_r0/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c0_r0/mux_out/select
#set_disable_timing pe_c0_r0/mux_out/in0
#set_disable_timing pe_c0_r0/mux_out/in1
#pe_c0_r0/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c0_r0/mux_out
set_disable_timing pe_c0_r0/mux_out/*

#pe_c0_r1
#pe_c0_r1/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c0_r1/mux_a/select[0]
#set_case_analysis 0 pe_c0_r1/mux_a/select[1]
#set_case_analysis 0 pe_c0_r1/mux_a/select[2]
#set_disable_timing pe_c0_r1/mux_a/in0
#set_disable_timing pe_c0_r1/mux_a/in1
#set_disable_timing pe_c0_r1/mux_a/in2
#set_disable_timing pe_c0_r1/mux_a/in3
#set_disable_timing pe_c0_r1/mux_a/in4
#set_disable_timing pe_c0_r1/mux_a/in5
#set_disable_timing pe_c0_r1/mux_a/in6
#pe_c0_r1/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r1/mux_a
set_disable_timing pe_c0_r1/mux_a/*

#pe_c0_r1/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c0_r1/mux_b/select[0]
#set_case_analysis 0 pe_c0_r1/mux_b/select[1]
#set_case_analysis 0 pe_c0_r1/mux_b/select[2]
#set_disable_timing pe_c0_r1/mux_b/in0
#set_disable_timing pe_c0_r1/mux_b/in1
#set_disable_timing pe_c0_r1/mux_b/in2
#set_disable_timing pe_c0_r1/mux_b/in3
#set_disable_timing pe_c0_r1/mux_b/in4
#set_disable_timing pe_c0_r1/mux_b/in5
#set_disable_timing pe_c0_r1/mux_b/in6
#pe_c0_r1/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r1/mux_b
set_disable_timing pe_c0_r1/mux_b/*

#pe_c0_r1/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c0_r1/mux_bypass/select[0]
#set_case_analysis 0 pe_c0_r1/mux_bypass/select[1]
#set_case_analysis 0 pe_c0_r1/mux_bypass/select[2]
#set_disable_timing pe_c0_r1/mux_bypass/in0
#set_disable_timing pe_c0_r1/mux_bypass/in1
#set_disable_timing pe_c0_r1/mux_bypass/in2
#set_disable_timing pe_c0_r1/mux_bypass/in3
#set_disable_timing pe_c0_r1/mux_bypass/in4
#pe_c0_r1/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c0_r1/mux_bypass
set_disable_timing pe_c0_r1/mux_bypass/*

#pe_c0_r1/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c0_r1/mux_out/select
#set_disable_timing pe_c0_r1/mux_out/in0
#set_disable_timing pe_c0_r1/mux_out/in1
#pe_c0_r1/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c0_r1/mux_out
set_disable_timing pe_c0_r1/mux_out/*

#pe_c0_r2
#pe_c0_r2/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c0_r2/mux_a/select[0]
#set_case_analysis 0 pe_c0_r2/mux_a/select[1]
#set_case_analysis 0 pe_c0_r2/mux_a/select[2]
#set_disable_timing pe_c0_r2/mux_a/in0
#set_disable_timing pe_c0_r2/mux_a/in1
#set_disable_timing pe_c0_r2/mux_a/in2
#set_disable_timing pe_c0_r2/mux_a/in3
#set_disable_timing pe_c0_r2/mux_a/in4
#set_disable_timing pe_c0_r2/mux_a/in5
#set_disable_timing pe_c0_r2/mux_a/in6
#pe_c0_r2/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r2/mux_a
set_disable_timing pe_c0_r2/mux_a/*

#pe_c0_r2/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c0_r2/mux_b/select[0]
#set_case_analysis 0 pe_c0_r2/mux_b/select[1]
#set_case_analysis 0 pe_c0_r2/mux_b/select[2]
#set_disable_timing pe_c0_r2/mux_b/in0
#set_disable_timing pe_c0_r2/mux_b/in1
#set_disable_timing pe_c0_r2/mux_b/in2
#set_disable_timing pe_c0_r2/mux_b/in3
#set_disable_timing pe_c0_r2/mux_b/in4
#set_disable_timing pe_c0_r2/mux_b/in5
#set_disable_timing pe_c0_r2/mux_b/in6
#pe_c0_r2/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r2/mux_b
set_disable_timing pe_c0_r2/mux_b/*

#pe_c0_r2/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c0_r2/mux_bypass/select[0]
#set_case_analysis 0 pe_c0_r2/mux_bypass/select[1]
#set_case_analysis 0 pe_c0_r2/mux_bypass/select[2]
#set_disable_timing pe_c0_r2/mux_bypass/in0
#set_disable_timing pe_c0_r2/mux_bypass/in1
#set_disable_timing pe_c0_r2/mux_bypass/in2
#set_disable_timing pe_c0_r2/mux_bypass/in3
#set_disable_timing pe_c0_r2/mux_bypass/in4
#pe_c0_r2/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c0_r2/mux_bypass
set_disable_timing pe_c0_r2/mux_bypass/*

#pe_c0_r2/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c0_r2/mux_out/select
#set_disable_timing pe_c0_r2/mux_out/in0
#set_disable_timing pe_c0_r2/mux_out/in1
#pe_c0_r2/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c0_r2/mux_out
set_disable_timing pe_c0_r2/mux_out/*

#pe_c0_r3
#pe_c0_r3/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c0_r3/mux_a/select[0]
#set_case_analysis 0 pe_c0_r3/mux_a/select[1]
#set_case_analysis 0 pe_c0_r3/mux_a/select[2]
#set_disable_timing pe_c0_r3/mux_a/in0
#set_disable_timing pe_c0_r3/mux_a/in1
#set_disable_timing pe_c0_r3/mux_a/in2
#set_disable_timing pe_c0_r3/mux_a/in3
#set_disable_timing pe_c0_r3/mux_a/in4
#set_disable_timing pe_c0_r3/mux_a/in5
#set_disable_timing pe_c0_r3/mux_a/in6
#pe_c0_r3/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r3/mux_a
set_disable_timing pe_c0_r3/mux_a/*

#pe_c0_r3/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c0_r3/mux_b/select[0]
#set_case_analysis 0 pe_c0_r3/mux_b/select[1]
#set_case_analysis 0 pe_c0_r3/mux_b/select[2]
#set_disable_timing pe_c0_r3/mux_b/in0
#set_disable_timing pe_c0_r3/mux_b/in1
#set_disable_timing pe_c0_r3/mux_b/in2
#set_disable_timing pe_c0_r3/mux_b/in3
#set_disable_timing pe_c0_r3/mux_b/in4
#set_disable_timing pe_c0_r3/mux_b/in5
#set_disable_timing pe_c0_r3/mux_b/in6
#pe_c0_r3/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c0_r3/mux_b
set_disable_timing pe_c0_r3/mux_b/*

#pe_c0_r3/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c0_r3/mux_bypass/select[0]
#set_case_analysis 0 pe_c0_r3/mux_bypass/select[1]
#set_case_analysis 0 pe_c0_r3/mux_bypass/select[2]
#set_disable_timing pe_c0_r3/mux_bypass/in0
#set_disable_timing pe_c0_r3/mux_bypass/in1
#set_disable_timing pe_c0_r3/mux_bypass/in2
#set_disable_timing pe_c0_r3/mux_bypass/in3
#set_disable_timing pe_c0_r3/mux_bypass/in4
#pe_c0_r3/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c0_r3/mux_bypass
set_disable_timing pe_c0_r3/mux_bypass/*

#pe_c0_r3/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c0_r3/mux_out/select
#set_disable_timing pe_c0_r3/mux_out/in0
#set_disable_timing pe_c0_r3/mux_out/in1
#pe_c0_r3/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c0_r3/mux_out
set_disable_timing pe_c0_r3/mux_out/*

#pe_c1_r*
#pe_c1_r0
#pe_c1_r0/mux_a      mux_8to1_32b 0
#set_case_analysis 0 pe_c1_r0/mux_a/select[0]
#set_case_analysis 0 pe_c1_r0/mux_a/select[1]
#set_case_analysis 0 pe_c1_r0/mux_a/select[2]
#set_disable_timing pe_c1_r0/mux_a/in0
#set_disable_timing pe_c1_r0/mux_a/in1
#set_disable_timing pe_c1_r0/mux_a/in2
#set_disable_timing pe_c1_r0/mux_a/in3
#set_disable_timing pe_c1_r0/mux_a/in4
#set_disable_timing pe_c1_r0/mux_a/in5
#set_disable_timing pe_c1_r0/mux_a/in6
#set_disable_timing pe_c1_r0/mux_a/in7
#pe_c1_r0/mux_a      mux_8to1_32b UNUSED
set_disable_timing pe_c1_r0/mux_a
set_disable_timing pe_c1_r0/mux_a/*

#pe_c1_r0/mux_b      mux_8to1_32b 1
#set_case_analysis 1 pe_c1_r0/mux_b/select[0]
#set_case_analysis 0 pe_c1_r0/mux_b/select[1]
#set_case_analysis 0 pe_c1_r0/mux_b/select[2]
#set_disable_timing pe_c1_r0/mux_b/in0
#set_disable_timing pe_c1_r0/mux_b/in1
#set_disable_timing pe_c1_r0/mux_b/in2
#set_disable_timing pe_c1_r0/mux_b/in3
#set_disable_timing pe_c1_r0/mux_b/in4
#set_disable_timing pe_c1_r0/mux_b/in5
#set_disable_timing pe_c1_r0/mux_b/in6
#set_disable_timing pe_c1_r0/mux_b/in7
#pe_c1_r0/mux_b      mux_8to1_32b UNUSED
set_disable_timing pe_c1_r0/mux_b
set_disable_timing pe_c1_r0/mux_b/*

#pe_c1_r0/mux_bypass mux_6to1_32b 0
#set_case_analysis 0 pe_c1_r0/mux_bypass/select[0]
#set_case_analysis 0 pe_c1_r0/mux_bypass/select[1]
#set_case_analysis 0 pe_c1_r0/mux_bypass/select[2]
#set_disable_timing pe_c1_r0/mux_bypass/in0
#set_disable_timing pe_c1_r0/mux_bypass/in1
#set_disable_timing pe_c1_r0/mux_bypass/in2
#set_disable_timing pe_c1_r0/mux_bypass/in3
#set_disable_timing pe_c1_r0/mux_bypass/in4
#set_disable_timing pe_c1_r0/mux_bypass/in5
#pe_c1_r0/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c1_r0/mux_bypass
set_disable_timing pe_c1_r0/mux_bypass/*

#pe_c1_r0/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c1_r0/mux_out/select
#set_disable_timing pe_c1_r0/mux_out/in0
#set_disable_timing pe_c1_r0/mux_out/in1
#pe_c1_r0/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c1_r0/mux_out
set_disable_timing pe_c1_r0/mux_out/*

#pe_c1_r1
#pe_c1_r1/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c1_r1/mux_a/select[0]
#set_case_analysis 0 pe_c1_r1/mux_a/select[1]
#set_case_analysis 0 pe_c1_r1/mux_a/select[2]
#set_disable_timing pe_c1_r1/mux_a/in0
#set_disable_timing pe_c1_r1/mux_a/in1
#set_disable_timing pe_c1_r1/mux_a/in2
#set_disable_timing pe_c1_r1/mux_a/in3
#set_disable_timing pe_c1_r1/mux_a/in4
#set_disable_timing pe_c1_r1/mux_a/in5
#set_disable_timing pe_c1_r1/mux_a/in6
#pe_c1_r1/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r1/mux_a
set_disable_timing pe_c1_r1/mux_a/*

#pe_c1_r1/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c1_r1/mux_b/select[0]
#set_case_analysis 0 pe_c1_r1/mux_b/select[1]
#set_case_analysis 0 pe_c1_r1/mux_b/select[2]
#set_disable_timing pe_c1_r1/mux_b/in0
#set_disable_timing pe_c1_r1/mux_b/in1
#set_disable_timing pe_c1_r1/mux_b/in2
#set_disable_timing pe_c1_r1/mux_b/in3
#set_disable_timing pe_c1_r1/mux_b/in4
#set_disable_timing pe_c1_r1/mux_b/in5
#set_disable_timing pe_c1_r1/mux_b/in6
#pe_c1_r1/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r1/mux_b
set_disable_timing pe_c1_r1/mux_b/*

#pe_c1_r1/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c1_r1/mux_bypass/select[0]
#set_case_analysis 0 pe_c1_r1/mux_bypass/select[1]
#set_case_analysis 0 pe_c1_r1/mux_bypass/select[2]
#set_disable_timing pe_c1_r1/mux_bypass/in0
#set_disable_timing pe_c1_r1/mux_bypass/in1
#set_disable_timing pe_c1_r1/mux_bypass/in2
#set_disable_timing pe_c1_r1/mux_bypass/in3
#set_disable_timing pe_c1_r1/mux_bypass/in4
#pe_c1_r1/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c1_r1/mux_bypass
set_disable_timing pe_c1_r1/mux_bypass/*

#pe_c1_r1/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c1_r1/mux_out/select
#set_disable_timing pe_c1_r1/mux_out/in0
#set_disable_timing pe_c1_r1/mux_out/in1
#pe_c1_r1/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c1_r1/mux_out
set_disable_timing pe_c1_r1/mux_out/*

#pe_c1_r2
#pe_c1_r2/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c1_r2/mux_a/select[0]
#set_case_analysis 0 pe_c1_r2/mux_a/select[1]
#set_case_analysis 0 pe_c1_r2/mux_a/select[2]
#set_disable_timing pe_c1_r2/mux_a/in0
#set_disable_timing pe_c1_r2/mux_a/in1
#set_disable_timing pe_c1_r2/mux_a/in2
#set_disable_timing pe_c1_r2/mux_a/in3
#set_disable_timing pe_c1_r2/mux_a/in4
#set_disable_timing pe_c1_r2/mux_a/in5
#set_disable_timing pe_c1_r2/mux_a/in6
#pe_c1_r2/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r2/mux_a
set_disable_timing pe_c1_r2/mux_a/*

#pe_c1_r2/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c1_r2/mux_b/select[0]
#set_case_analysis 0 pe_c1_r2/mux_b/select[1]
#set_case_analysis 0 pe_c1_r2/mux_b/select[2]
#set_disable_timing pe_c1_r2/mux_b/in0
#set_disable_timing pe_c1_r2/mux_b/in1
#set_disable_timing pe_c1_r2/mux_b/in2
#set_disable_timing pe_c1_r2/mux_b/in3
#set_disable_timing pe_c1_r2/mux_b/in4
#set_disable_timing pe_c1_r2/mux_b/in5
#set_disable_timing pe_c1_r2/mux_b/in6
#pe_c1_r2/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r2/mux_b
set_disable_timing pe_c1_r2/mux_b/*

#pe_c1_r2/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c1_r2/mux_bypass/select[0]
#set_case_analysis 0 pe_c1_r2/mux_bypass/select[1]
#set_case_analysis 0 pe_c1_r2/mux_bypass/select[2]
#set_disable_timing pe_c1_r2/mux_bypass/in0
#set_disable_timing pe_c1_r2/mux_bypass/in1
#set_disable_timing pe_c1_r2/mux_bypass/in2
#set_disable_timing pe_c1_r2/mux_bypass/in3
#set_disable_timing pe_c1_r2/mux_bypass/in4
#pe_c1_r2/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c1_r2/mux_bypass
set_disable_timing pe_c1_r2/mux_bypass/*

#pe_c1_r2/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c1_r2/mux_out/select
#set_disable_timing pe_c1_r2/mux_out/in0
#set_disable_timing pe_c1_r2/mux_out/in1
#pe_c1_r2/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c1_r2/mux_out
set_disable_timing pe_c1_r2/mux_out/*

#pe_c1_r3
#pe_c1_r3/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c1_r3/mux_a/select[0]
#set_case_analysis 0 pe_c1_r3/mux_a/select[1]
#set_case_analysis 0 pe_c1_r3/mux_a/select[2]
#set_disable_timing pe_c1_r3/mux_a/in0
#set_disable_timing pe_c1_r3/mux_a/in1
#set_disable_timing pe_c1_r3/mux_a/in2
#set_disable_timing pe_c1_r3/mux_a/in3
#set_disable_timing pe_c1_r3/mux_a/in4
#set_disable_timing pe_c1_r3/mux_a/in5
#set_disable_timing pe_c1_r3/mux_a/in6
#pe_c1_r3/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r3/mux_a
set_disable_timing pe_c1_r3/mux_a/*

#pe_c1_r3/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c1_r3/mux_b/select[0]
#set_case_analysis 0 pe_c1_r3/mux_b/select[1]
#set_case_analysis 0 pe_c1_r3/mux_b/select[2]
#set_disable_timing pe_c1_r3/mux_b/in0
#set_disable_timing pe_c1_r3/mux_b/in1
#set_disable_timing pe_c1_r3/mux_b/in2
#set_disable_timing pe_c1_r3/mux_b/in3
#set_disable_timing pe_c1_r3/mux_b/in4
#set_disable_timing pe_c1_r3/mux_b/in5
#set_disable_timing pe_c1_r3/mux_b/in6
#pe_c1_r3/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c1_r3/mux_b
set_disable_timing pe_c1_r3/mux_b/*

#pe_c1_r3/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c1_r3/mux_bypass/select[0]
#set_case_analysis 0 pe_c1_r3/mux_bypass/select[1]
#set_case_analysis 0 pe_c1_r3/mux_bypass/select[2]
#set_disable_timing pe_c1_r3/mux_bypass/in0
#set_disable_timing pe_c1_r3/mux_bypass/in1
#set_disable_timing pe_c1_r3/mux_bypass/in2
#set_disable_timing pe_c1_r3/mux_bypass/in3
#set_disable_timing pe_c1_r3/mux_bypass/in4
#pe_c1_r3/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c1_r3/mux_bypass
set_disable_timing pe_c1_r3/mux_bypass/*

#pe_c1_r3/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c1_r3/mux_out/select
#set_disable_timing pe_c1_r3/mux_out/in0
#set_disable_timing pe_c1_r3/mux_out/in1
#pe_c1_r3/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c1_r3/mux_out
set_disable_timing pe_c1_r3/mux_out/*

#pe_c2_r*
#pe_c2_r0
#pe_c2_r0/mux_a      mux_8to1_32b 0
#set_case_analysis 0 pe_c2_r0/mux_a/select[0]
#set_case_analysis 0 pe_c2_r0/mux_a/select[1]
#set_case_analysis 0 pe_c2_r0/mux_a/select[2]
#set_disable_timing pe_c2_r0/mux_a/in0
#set_disable_timing pe_c2_r0/mux_a/in1
#set_disable_timing pe_c2_r0/mux_a/in2
#set_disable_timing pe_c2_r0/mux_a/in3
#set_disable_timing pe_c2_r0/mux_a/in4
#set_disable_timing pe_c2_r0/mux_a/in5
#set_disable_timing pe_c2_r0/mux_a/in6
#set_disable_timing pe_c2_r0/mux_a/in7
#pe_c2_r0/mux_a      mux_8to1_32b UNUSED
set_disable_timing pe_c2_r0/mux_a
set_disable_timing pe_c2_r0/mux_a/*

#pe_c2_r0/mux_b      mux_8to1_32b 1
#set_case_analysis 1 pe_c2_r0/mux_b/select[0]
#set_case_analysis 0 pe_c2_r0/mux_b/select[1]
#set_case_analysis 0 pe_c2_r0/mux_b/select[2]
#set_disable_timing pe_c2_r0/mux_b/in0
#set_disable_timing pe_c2_r0/mux_b/in1
#set_disable_timing pe_c2_r0/mux_b/in2
#set_disable_timing pe_c2_r0/mux_b/in3
#set_disable_timing pe_c2_r0/mux_b/in4
#set_disable_timing pe_c2_r0/mux_b/in5
#set_disable_timing pe_c2_r0/mux_b/in6
#set_disable_timing pe_c2_r0/mux_b/in7
#pe_c2_r0/mux_b      mux_8to1_32b UNUSED
set_disable_timing pe_c2_r0/mux_b
set_disable_timing pe_c2_r0/mux_b/*

#pe_c2_r0/mux_bypass mux_6to1_32b 0
#set_case_analysis 0 pe_c2_r0/mux_bypass/select[0]
#set_case_analysis 0 pe_c2_r0/mux_bypass/select[1]
#set_case_analysis 0 pe_c2_r0/mux_bypass/select[2]
#set_disable_timing pe_c2_r0/mux_bypass/in0
#set_disable_timing pe_c2_r0/mux_bypass/in1
#set_disable_timing pe_c2_r0/mux_bypass/in2
#set_disable_timing pe_c2_r0/mux_bypass/in3
#set_disable_timing pe_c2_r0/mux_bypass/in4
#set_disable_timing pe_c2_r0/mux_bypass/in5
#pe_c2_r0/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c2_r0/mux_bypass
set_disable_timing pe_c2_r0/mux_bypass/*

#pe_c2_r0/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c2_r0/mux_out/select
#set_disable_timing pe_c2_r0/mux_out/in0
#set_disable_timing pe_c2_r0/mux_out/in1
#pe_c2_r0/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c2_r0/mux_out
set_disable_timing pe_c2_r0/mux_out/*

#pe_c2_r1
#pe_c2_r1/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c2_r1/mux_a/select[0]
#set_case_analysis 0 pe_c2_r1/mux_a/select[1]
#set_case_analysis 0 pe_c2_r1/mux_a/select[2]
#set_disable_timing pe_c2_r1/mux_a/in0
#set_disable_timing pe_c2_r1/mux_a/in1
#set_disable_timing pe_c2_r1/mux_a/in2
#set_disable_timing pe_c2_r1/mux_a/in3
#set_disable_timing pe_c2_r1/mux_a/in4
#set_disable_timing pe_c2_r1/mux_a/in5
#set_disable_timing pe_c2_r1/mux_a/in6
#pe_c2_r1/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r1/mux_a
set_disable_timing pe_c2_r1/mux_a/*

#pe_c2_r1/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c2_r1/mux_b/select[0]
#set_case_analysis 0 pe_c2_r1/mux_b/select[1]
#set_case_analysis 0 pe_c2_r1/mux_b/select[2]
#set_disable_timing pe_c2_r1/mux_b/in0
#set_disable_timing pe_c2_r1/mux_b/in1
#set_disable_timing pe_c2_r1/mux_b/in2
#set_disable_timing pe_c2_r1/mux_b/in3
#set_disable_timing pe_c2_r1/mux_b/in4
#set_disable_timing pe_c2_r1/mux_b/in5
#set_disable_timing pe_c2_r1/mux_b/in6
#pe_c2_r1/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r1/mux_b
set_disable_timing pe_c2_r1/mux_b/*

#pe_c2_r1/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c2_r1/mux_bypass/select[0]
#set_case_analysis 0 pe_c2_r1/mux_bypass/select[1]
#set_case_analysis 0 pe_c2_r1/mux_bypass/select[2]
#set_disable_timing pe_c2_r1/mux_bypass/in0
#set_disable_timing pe_c2_r1/mux_bypass/in1
#set_disable_timing pe_c2_r1/mux_bypass/in2
#set_disable_timing pe_c2_r1/mux_bypass/in3
#set_disable_timing pe_c2_r1/mux_bypass/in4
#pe_c2_r1/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c2_r1/mux_bypass
set_disable_timing pe_c2_r1/mux_bypass/*

#pe_c2_r1/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c2_r1/mux_out/select
#set_disable_timing pe_c2_r1/mux_out/in0
#set_disable_timing pe_c2_r1/mux_out/in1
#pe_c2_r1/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c2_r1/mux_out
set_disable_timing pe_c2_r1/mux_out/*

#pe_c2_r2
#pe_c2_r2/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c2_r2/mux_a/select[0]
#set_case_analysis 0 pe_c2_r2/mux_a/select[1]
#set_case_analysis 0 pe_c2_r2/mux_a/select[2]
#set_disable_timing pe_c2_r2/mux_a/in0
#set_disable_timing pe_c2_r2/mux_a/in1
#set_disable_timing pe_c2_r2/mux_a/in2
#set_disable_timing pe_c2_r2/mux_a/in3
#set_disable_timing pe_c2_r2/mux_a/in4
#set_disable_timing pe_c2_r2/mux_a/in5
#set_disable_timing pe_c2_r2/mux_a/in6
#pe_c2_r2/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r2/mux_a
set_disable_timing pe_c2_r2/mux_a/*

#pe_c2_r2/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c2_r2/mux_b/select[0]
#set_case_analysis 0 pe_c2_r2/mux_b/select[1]
#set_case_analysis 0 pe_c2_r2/mux_b/select[2]
#set_disable_timing pe_c2_r2/mux_b/in0
#set_disable_timing pe_c2_r2/mux_b/in1
#set_disable_timing pe_c2_r2/mux_b/in2
#set_disable_timing pe_c2_r2/mux_b/in3
#set_disable_timing pe_c2_r2/mux_b/in4
#set_disable_timing pe_c2_r2/mux_b/in5
#set_disable_timing pe_c2_r2/mux_b/in6
#pe_c2_r2/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r2/mux_b
set_disable_timing pe_c2_r2/mux_b/*

#pe_c2_r2/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c2_r2/mux_bypass/select[0]
#set_case_analysis 0 pe_c2_r2/mux_bypass/select[1]
#set_case_analysis 0 pe_c2_r2/mux_bypass/select[2]
#set_disable_timing pe_c2_r2/mux_bypass/in0
#set_disable_timing pe_c2_r2/mux_bypass/in1
#set_disable_timing pe_c2_r2/mux_bypass/in2
#set_disable_timing pe_c2_r2/mux_bypass/in3
#set_disable_timing pe_c2_r2/mux_bypass/in4
#pe_c2_r2/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c2_r2/mux_bypass
set_disable_timing pe_c2_r2/mux_bypass/*

#pe_c2_r2/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c2_r2/mux_out/select
#set_disable_timing pe_c2_r2/mux_out/in0
#set_disable_timing pe_c2_r2/mux_out/in1
#pe_c2_r2/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c2_r2/mux_out
set_disable_timing pe_c2_r2/mux_out/*

#pe_c2_r3
#pe_c2_r3/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c2_r3/mux_a/select[0]
#set_case_analysis 0 pe_c2_r3/mux_a/select[1]
#set_case_analysis 0 pe_c2_r3/mux_a/select[2]
#set_disable_timing pe_c2_r3/mux_a/in0
#set_disable_timing pe_c2_r3/mux_a/in1
#set_disable_timing pe_c2_r3/mux_a/in2
#set_disable_timing pe_c2_r3/mux_a/in3
#set_disable_timing pe_c2_r3/mux_a/in4
#set_disable_timing pe_c2_r3/mux_a/in5
#set_disable_timing pe_c2_r3/mux_a/in6
#pe_c2_r3/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r3/mux_a
set_disable_timing pe_c2_r3/mux_a/*

#pe_c2_r3/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c2_r3/mux_b/select[0]
#set_case_analysis 0 pe_c2_r3/mux_b/select[1]
#set_case_analysis 0 pe_c2_r3/mux_b/select[2]
#set_disable_timing pe_c2_r3/mux_b/in0
#set_disable_timing pe_c2_r3/mux_b/in1
#set_disable_timing pe_c2_r3/mux_b/in2
#set_disable_timing pe_c2_r3/mux_b/in3
#set_disable_timing pe_c2_r3/mux_b/in4
#set_disable_timing pe_c2_r3/mux_b/in5
#set_disable_timing pe_c2_r3/mux_b/in6
#pe_c2_r3/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c2_r3/mux_b
set_disable_timing pe_c2_r3/mux_b/*

#pe_c2_r3/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c2_r3/mux_bypass/select[0]
#set_case_analysis 0 pe_c2_r3/mux_bypass/select[1]
#set_case_analysis 0 pe_c2_r3/mux_bypass/select[2]
#set_disable_timing pe_c2_r3/mux_bypass/in0
#set_disable_timing pe_c2_r3/mux_bypass/in1
#set_disable_timing pe_c2_r3/mux_bypass/in2
#set_disable_timing pe_c2_r3/mux_bypass/in3
#set_disable_timing pe_c2_r3/mux_bypass/in4
#pe_c2_r3/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c2_r3/mux_bypass
set_disable_timing pe_c2_r3/mux_bypass/*

#pe_c2_r3/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c2_r3/mux_out/select
#set_disable_timing pe_c2_r3/mux_out/in0
#set_disable_timing pe_c2_r3/mux_out/in1
#pe_c2_r3/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c2_r3/mux_out
set_disable_timing pe_c2_r3/mux_out/*

#pe_c3_r*
#pe_c3_r0
#pe_c3_r0/mux_a      mux_8to1_32b 0
#set_case_analysis 0 pe_c3_r0/mux_a/select[0]
#set_case_analysis 0 pe_c3_r0/mux_a/select[1]
#set_case_analysis 0 pe_c3_r0/mux_a/select[2]
#set_disable_timing pe_c3_r0/mux_a/in0
#set_disable_timing pe_c3_r0/mux_a/in1
#set_disable_timing pe_c3_r0/mux_a/in2
#set_disable_timing pe_c3_r0/mux_a/in3
#set_disable_timing pe_c3_r0/mux_a/in4
#set_disable_timing pe_c3_r0/mux_a/in5
#set_disable_timing pe_c3_r0/mux_a/in6
#set_disable_timing pe_c3_r0/mux_a/in7
#pe_c3_r0/mux_a      mux_8to1_32b UNUSED
set_disable_timing pe_c3_r0/mux_a
set_disable_timing pe_c3_r0/mux_a/*

#pe_c3_r0/mux_b      mux_8to1_32b 1
#set_case_analysis 1 pe_c3_r0/mux_b/select[0]
#set_case_analysis 0 pe_c3_r0/mux_b/select[1]
#set_case_analysis 0 pe_c3_r0/mux_b/select[2]
#set_disable_timing pe_c3_r0/mux_b/in0
#set_disable_timing pe_c3_r0/mux_b/in1
#set_disable_timing pe_c3_r0/mux_b/in2
#set_disable_timing pe_c3_r0/mux_b/in3
#set_disable_timing pe_c3_r0/mux_b/in4
#set_disable_timing pe_c3_r0/mux_b/in5
#set_disable_timing pe_c3_r0/mux_b/in6
#set_disable_timing pe_c3_r0/mux_b/in7
#pe_c3_r0/mux_b      mux_8to1_32b UNUSED
set_disable_timing pe_c3_r0/mux_b
set_disable_timing pe_c3_r0/mux_b/*

#pe_c3_r0/mux_bypass mux_6to1_32b 0
#set_case_analysis 0 pe_c3_r0/mux_bypass/select[0]
#set_case_analysis 0 pe_c3_r0/mux_bypass/select[1]
#set_case_analysis 0 pe_c3_r0/mux_bypass/select[2]
#set_disable_timing pe_c3_r0/mux_bypass/in0
#set_disable_timing pe_c3_r0/mux_bypass/in1
#set_disable_timing pe_c3_r0/mux_bypass/in2
#set_disable_timing pe_c3_r0/mux_bypass/in3
#set_disable_timing pe_c3_r0/mux_bypass/in4
#set_disable_timing pe_c3_r0/mux_bypass/in5
#pe_c3_r0/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c3_r0/mux_bypass
set_disable_timing pe_c3_r0/mux_bypass/*

#pe_c3_r0/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c3_r0/mux_out/select
#set_disable_timing pe_c3_r0/mux_out/in0
#set_disable_timing pe_c3_r0/mux_out/in1
#pe_c3_r0/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c3_r0/mux_out
set_disable_timing pe_c3_r0/mux_out/*

#pe_c3_r1
#pe_c3_r1/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c3_r1/mux_a/select[0]
#set_case_analysis 0 pe_c3_r1/mux_a/select[1]
#set_case_analysis 0 pe_c3_r1/mux_a/select[2]
#set_disable_timing pe_c3_r1/mux_a/in0
#set_disable_timing pe_c3_r1/mux_a/in1
#set_disable_timing pe_c3_r1/mux_a/in2
#set_disable_timing pe_c3_r1/mux_a/in3
#set_disable_timing pe_c3_r1/mux_a/in4
#set_disable_timing pe_c3_r1/mux_a/in5
#set_disable_timing pe_c3_r1/mux_a/in6
#pe_c3_r1/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r1/mux_a
set_disable_timing pe_c3_r1/mux_a/*

#pe_c3_r1/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c3_r1/mux_b/select[0]
#set_case_analysis 0 pe_c3_r1/mux_b/select[1]
#set_case_analysis 0 pe_c3_r1/mux_b/select[2]
#set_disable_timing pe_c3_r1/mux_b/in0
#set_disable_timing pe_c3_r1/mux_b/in1
#set_disable_timing pe_c3_r1/mux_b/in2
#set_disable_timing pe_c3_r1/mux_b/in3
#set_disable_timing pe_c3_r1/mux_b/in4
#set_disable_timing pe_c3_r1/mux_b/in5
#set_disable_timing pe_c3_r1/mux_b/in6
#pe_c3_r1/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r1/mux_b
set_disable_timing pe_c3_r1/mux_b/*

#pe_c3_r1/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c3_r1/mux_bypass/select[0]
#set_case_analysis 0 pe_c3_r1/mux_bypass/select[1]
#set_case_analysis 0 pe_c3_r1/mux_bypass/select[2]
#set_disable_timing pe_c3_r1/mux_bypass/in0
#set_disable_timing pe_c3_r1/mux_bypass/in1
#set_disable_timing pe_c3_r1/mux_bypass/in2
#set_disable_timing pe_c3_r1/mux_bypass/in3
#set_disable_timing pe_c3_r1/mux_bypass/in4
#pe_c3_r1/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c3_r1/mux_bypass
set_disable_timing pe_c3_r1/mux_bypass/*

#pe_c3_r1/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c3_r1/mux_out/select
#set_disable_timing pe_c3_r1/mux_out/in0
#set_disable_timing pe_c3_r1/mux_out/in1
#pe_c3_r1/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c3_r1/mux_out
set_disable_timing pe_c3_r1/mux_out/*

#pe_c3_r2
#pe_c3_r2/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c3_r2/mux_a/select[0]
#set_case_analysis 0 pe_c3_r2/mux_a/select[1]
#set_case_analysis 0 pe_c3_r2/mux_a/select[2]
#set_disable_timing pe_c3_r2/mux_a/in0
#set_disable_timing pe_c3_r2/mux_a/in1
#set_disable_timing pe_c3_r2/mux_a/in2
#set_disable_timing pe_c3_r2/mux_a/in3
#set_disable_timing pe_c3_r2/mux_a/in4
#set_disable_timing pe_c3_r2/mux_a/in5
#set_disable_timing pe_c3_r2/mux_a/in6
#pe_c3_r2/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r2/mux_a
set_disable_timing pe_c3_r2/mux_a/*

#pe_c3_r2/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c3_r2/mux_b/select[0]
#set_case_analysis 0 pe_c3_r2/mux_b/select[1]
#set_case_analysis 0 pe_c3_r2/mux_b/select[2]
#set_disable_timing pe_c3_r2/mux_b/in0
#set_disable_timing pe_c3_r2/mux_b/in1
#set_disable_timing pe_c3_r2/mux_b/in2
#set_disable_timing pe_c3_r2/mux_b/in3
#set_disable_timing pe_c3_r2/mux_b/in4
#set_disable_timing pe_c3_r2/mux_b/in5
#set_disable_timing pe_c3_r2/mux_b/in6
#pe_c3_r2/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r2/mux_b
set_disable_timing pe_c3_r2/mux_b/*

#pe_c3_r2/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c3_r2/mux_bypass/select[0]
#set_case_analysis 0 pe_c3_r2/mux_bypass/select[1]
#set_case_analysis 0 pe_c3_r2/mux_bypass/select[2]
#set_disable_timing pe_c3_r2/mux_bypass/in0
#set_disable_timing pe_c3_r2/mux_bypass/in1
#set_disable_timing pe_c3_r2/mux_bypass/in2
#set_disable_timing pe_c3_r2/mux_bypass/in3
#set_disable_timing pe_c3_r2/mux_bypass/in4
#pe_c3_r2/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c3_r2/mux_bypass
set_disable_timing pe_c3_r2/mux_bypass/*

#pe_c3_r2/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c3_r2/mux_out/select
#set_disable_timing pe_c3_r2/mux_out/in0
#set_disable_timing pe_c3_r2/mux_out/in1
#pe_c3_r2/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c3_r2/mux_out
set_disable_timing pe_c3_r2/mux_out/*

#pe_c3_r3
#pe_c3_r3/mux_a      mux_7to1_32b 0
#set_case_analysis 0 pe_c3_r3/mux_a/select[0]
#set_case_analysis 0 pe_c3_r3/mux_a/select[1]
#set_case_analysis 0 pe_c3_r3/mux_a/select[2]
#set_disable_timing pe_c3_r3/mux_a/in0
#set_disable_timing pe_c3_r3/mux_a/in1
#set_disable_timing pe_c3_r3/mux_a/in2
#set_disable_timing pe_c3_r3/mux_a/in3
#set_disable_timing pe_c3_r3/mux_a/in4
#set_disable_timing pe_c3_r3/mux_a/in5
#set_disable_timing pe_c3_r3/mux_a/in6
#pe_c3_r3/mux_a      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r3/mux_a
set_disable_timing pe_c3_r3/mux_a/*

#pe_c3_r3/mux_b      mux_7to1_32b 1
#set_case_analysis 1 pe_c3_r3/mux_b/select[0]
#set_case_analysis 0 pe_c3_r3/mux_b/select[1]
#set_case_analysis 0 pe_c3_r3/mux_b/select[2]
#set_disable_timing pe_c3_r3/mux_b/in0
#set_disable_timing pe_c3_r3/mux_b/in1
#set_disable_timing pe_c3_r3/mux_b/in2
#set_disable_timing pe_c3_r3/mux_b/in3
#set_disable_timing pe_c3_r3/mux_b/in4
#set_disable_timing pe_c3_r3/mux_b/in5
#set_disable_timing pe_c3_r3/mux_b/in6
#pe_c3_r3/mux_b      mux_7to1_32b UNUSED
set_disable_timing pe_c3_r3/mux_b
set_disable_timing pe_c3_r3/mux_b/*

#pe_c3_r3/mux_bypass mux_5to1_32b 0
#set_case_analysis 0 pe_c3_r3/mux_bypass/select[0]
#set_case_analysis 0 pe_c3_r3/mux_bypass/select[1]
#set_case_analysis 0 pe_c3_r3/mux_bypass/select[2]
#set_disable_timing pe_c3_r3/mux_bypass/in0
#set_disable_timing pe_c3_r3/mux_bypass/in1
#set_disable_timing pe_c3_r3/mux_bypass/in2
#set_disable_timing pe_c3_r3/mux_bypass/in3
#set_disable_timing pe_c3_r3/mux_bypass/in4
#pe_c3_r3/mux_bypass mux_8to1_32b UNUSED
set_disable_timing pe_c3_r3/mux_bypass
set_disable_timing pe_c3_r3/mux_bypass/*

#pe_c3_r3/mux_out    mux_2to1_32b 0
#set_case_analysis 0 pe_c3_r3/mux_out/select
#set_disable_timing pe_c3_r3/mux_out/in0
#set_disable_timing pe_c3_r3/mux_out/in1
#pe_c3_r3/mux_out    mux_2to1_32b UNUSED
set_disable_timing pe_c3_r3/mux_out
set_disable_timing pe_c3_r3/mux_out/*

puts "######## Setting Correct OpCode ########"
#TODO: Invert Commented Section for Used FuncUnits
#0: computation = add_sel;
#1: computation = mul_sel;
#2: computation = sub_sel;
#3: computation = and_sel;
#4: computation = or_sel;
#5: computation = xor_sel;
#6: computation = shl_sel;
#7: computation = ashr_sel;
#8: computation = lshr_sel;
set_disable_timing pe_c0_r0/func
set_disable_timing pe_c0_r0/func/*
set_disable_timing pe_c0_r1/func
set_disable_timing pe_c0_r1/func/*
set_disable_timing pe_c0_r2/func
set_disable_timing pe_c0_r2/func/*
set_disable_timing pe_c0_r3/func
set_disable_timing pe_c0_r3/func/*
set_disable_timing pe_c1_r0/func
set_disable_timing pe_c1_r0/func/*
set_disable_timing pe_c1_r1/func
set_disable_timing pe_c1_r1/func/*
set_disable_timing pe_c1_r2/func
set_disable_timing pe_c1_r2/func/*
set_disable_timing pe_c1_r3/func
set_disable_timing pe_c1_r3/func/*
set_disable_timing pe_c2_r0/func
set_disable_timing pe_c2_r0/func/*
set_disable_timing pe_c2_r1/func
set_disable_timing pe_c2_r1/func/*
set_disable_timing pe_c2_r2/func
set_disable_timing pe_c2_r2/func/*
set_disable_timing pe_c2_r3/func
set_disable_timing pe_c2_r3/func/*
set_disable_timing pe_c3_r0/func
set_disable_timing pe_c3_r0/func/*
set_disable_timing pe_c3_r1/func
set_disable_timing pe_c3_r1/func/*
set_disable_timing pe_c3_r2/func
set_disable_timing pe_c3_r2/func/*
set_disable_timing pe_c3_r3/func
set_disable_timing pe_c3_r3/func/*
#pe_c0_r*/func
#pe_c0_r0/func : add0
#set_case_analysis 0 pe_c0_r0/func/select[0]
#set_case_analysis 0 pe_c0_r0/func/select[1]
#set_case_analysis 0 pe_c0_r0/func/select[2]
#set_case_analysis 0 pe_c0_r0/func/select[3]
#pe_c0_r1/func : add0
#set_case_analysis 0 pe_c0_r1/func/select[0]
#set_case_analysis 0 pe_c0_r1/func/select[1]
#set_case_analysis 0 pe_c0_r1/func/select[2]
#set_case_analysis 0 pe_c0_r1/func/select[3]
#pe_c0_r2/func : add0
#set_case_analysis 0 pe_c0_r2/func/select[0]
#set_case_analysis 0 pe_c0_r2/func/select[1]
#set_case_analysis 0 pe_c0_r2/func/select[2]
#set_case_analysis 0 pe_c0_r2/func/select[3]
#pe_c0_r3/func : add0
#set_case_analysis 0 pe_c0_r3/func/select[0]
#set_case_analysis 0 pe_c0_r3/func/select[1]
#set_case_analysis 0 pe_c0_r3/func/select[2]
#set_case_analysis 0 pe_c0_r3/func/select[3]
#pe_c1_r*/func
#pe_c1_r0/func : add0
#set_case_analysis 0 pe_c1_r0/func/select[0]
#set_case_analysis 0 pe_c1_r0/func/select[1]
#set_case_analysis 0 pe_c1_r0/func/select[2]
#set_case_analysis 0 pe_c1_r0/func/select[3]
#pe_c1_r1/func : add0
#set_case_analysis 0 pe_c1_r1/func/select[0]
#set_case_analysis 0 pe_c1_r1/func/select[1]
#set_case_analysis 0 pe_c1_r1/func/select[2]
#set_case_analysis 0 pe_c1_r1/func/select[3]
#pe_c1_r2/func : add0
#set_case_analysis 0 pe_c1_r2/func/select[0]
#set_case_analysis 0 pe_c1_r2/func/select[1]
#set_case_analysis 0 pe_c1_r2/func/select[2]
#set_case_analysis 0 pe_c1_r2/func/select[3]
#pe_c1_r3/func : add0
#set_case_analysis 0 pe_c1_r3/func/select[0]
#set_case_analysis 0 pe_c1_r3/func/select[1]
#set_case_analysis 0 pe_c1_r3/func/select[2]
#set_case_analysis 0 pe_c1_r3/func/select[3]
#pe_c2_r*/func
#pe_c2_r0/func : add0
#set_case_analysis 0 pe_c2_r0/func/select[0]
#set_case_analysis 0 pe_c2_r0/func/select[1]
#set_case_analysis 0 pe_c2_r0/func/select[2]
#set_case_analysis 0 pe_c2_r0/func/select[3]
#pe_c2_r1/func : add0
#set_case_analysis 0 pe_c2_r1/func/select[0]
#set_case_analysis 0 pe_c2_r1/func/select[1]
#set_case_analysis 0 pe_c2_r1/func/select[2]
#set_case_analysis 0 pe_c2_r1/func/select[3]
#pe_c2_r2/func : add0
#set_case_analysis 0 pe_c2_r2/func/select[0]
#set_case_analysis 0 pe_c2_r2/func/select[1]
#set_case_analysis 0 pe_c2_r2/func/select[2]
#set_case_analysis 0 pe_c2_r2/func/select[3]
#pe_c2_r3/func : add0
#set_case_analysis 0 pe_c2_r3/func/select[0]
#set_case_analysis 0 pe_c2_r3/func/select[1]
#set_case_analysis 0 pe_c2_r3/func/select[2]
#set_case_analysis 0 pe_c2_r3/func/select[3]
#pe_c3_r*/func
#pe_c3_r0/func : add0
#set_case_analysis 0 pe_c3_r0/func/select[0]
#set_case_analysis 0 pe_c3_r0/func/select[1]
#set_case_analysis 0 pe_c3_r0/func/select[2]
#set_case_analysis 0 pe_c3_r0/func/select[3]
#pe_c3_r1/func : add0
#set_case_analysis 0 pe_c3_r1/func/select[0]
#set_case_analysis 0 pe_c3_r1/func/select[1]
#set_case_analysis 0 pe_c3_r1/func/select[2]
#set_case_analysis 0 pe_c3_r1/func/select[3]
#pe_c3_r2/func : add0
#set_case_analysis 0 pe_c3_r2/func/select[0]
#set_case_analysis 0 pe_c3_r2/func/select[1]
#set_case_analysis 0 pe_c3_r2/func/select[2]
#set_case_analysis 0 pe_c3_r2/func/select[3]
#pe_c3_r3/func : add0
#set_case_analysis 0 pe_c3_r3/func/select[0]
#set_case_analysis 0 pe_c3_r3/func/select[1]
#set_case_analysis 0 pe_c3_r3/func/select[2]
#set_case_analysis 0 pe_c3_r3/func/select[3]

puts "######## END ########"
