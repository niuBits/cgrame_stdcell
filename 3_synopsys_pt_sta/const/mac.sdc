#!/usr/bin/tclsh

set_false_path -from Config_Clock -to *
set_false_path -from ConfigIn -to *
set_false_path -from CGRA_Reset -to *
puts "######## BEGIN ########"
#Operation Mapping Result:
#mul0(mul): 0:pe_c0_r0.func.fu (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#const1(const): 0:pe_c0_r0.const.const (module: `const_32b`)
#load2(load): 0:mem_0.mem_unit.mem (module: `memUnit_32b`)
#mul3(mul): 0:pe_c1_r3.func.fu (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#const4(const): 0:pe_c1_r3.const.const (module: `const_32b`)
#load5(load): 0:mem_3.mem_unit.mem (module: `memUnit_32b`)
#mul6(mul): 0:pe_c3_r0.func.fu (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#add7(add): 0:pe_c1_r0.func.fu (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#output8(output): 0:io_top_1.OE.io (module: `tristate_32b`)
#add9(add): 0:pe_c0_r3.func.fu (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#const10(const): 0:pe_c0_r3.const.const (module: `const_32b`)
#
#Connection Mapping Result:
#load2_val_output:
#  0:mem_0.mem_unit.data_out (module: `memUnit_32b`)
#  0:mem_0.out (module: `memoryPort_4connect_32b`)
#  0:pe_c3_r0.func.in_b (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c3_r0.in1 (module: `adres_6in_vliw`)
#  0:pe_c3_r0.mux_b.in1 (module: `mux_8to1_32b`)
#  0:pe_c3_r0.mux_b.mux (module: `mux_8to1_32b`)
#  0:pe_c3_r0.mux_b.out (module: `mux_8to1_32b`)
#
#load5_val_output:
#  0:mem_3.mem_unit.data_out (module: `memUnit_32b`)
#  0:mem_3.out (module: `memoryPort_4connect_32b`)
#  0:pe_c3_r0.func.in_a (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c3_r0.in4 (module: `adres_6in_vliw`)
#  0:pe_c3_r0.mux_a.in4 (module: `mux_8to1_32b`)
#  0:pe_c3_r0.mux_a.mux (module: `mux_8to1_32b`)
#  0:pe_c3_r0.mux_a.out (module: `mux_8to1_32b`)
#  0:pe_c3_r3.in0 (module: `adres_5in_vliw`)
#  0:pe_c3_r3.mux_bypass.in0 (module: `mux_5to1_32b`)
#  0:pe_c3_r3.mux_bypass.mux (module: `mux_5to1_32b`)
#  0:pe_c3_r3.mux_bypass.out (module: `mux_5to1_32b`)
#  0:pe_c3_r3.mux_out.in1 (module: `mux_2to1_32b`)
#  0:pe_c3_r3.mux_out.mux (module: `mux_2to1_32b`)
#  0:pe_c3_r3.mux_out.out (module: `mux_2to1_32b`)
#  0:pe_c3_r3.out (module: `adres_5in_vliw`)
#
#mul6_val_output:
#  0:drf.in3 (module: `registerFile_4in_8out_32b`)
#  0:drf.out2 (module: `registerFile_4in_8out_32b`)
#  0:drf.out2_m6 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg6 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg6_m3 (module: `registerFile_4in_8out_32b`)
#  0:pe_c1_r0.func.in_a (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r0.mux_a.in7 (module: `mux_8to1_32b`)
#  0:pe_c1_r0.mux_a.mux (module: `mux_8to1_32b`)
#  0:pe_c1_r0.mux_a.out (module: `mux_8to1_32b`)
#  0:pe_c1_r0.rf_to_muxa (module: `adres_6in_vliw`)
#  0:pe_c3_r0.fu_to_rf (module: `adres_6in_vliw`)
#  0:pe_c3_r0.func.m_out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c3_r0.func.out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#
#add7_val_output:
#  0:drf.in1 (module: `registerFile_4in_8out_32b`)
#  0:drf.out3 (module: `registerFile_4in_8out_32b`)
#  0:drf.out3_m0 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg0 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg0_m1 (module: `registerFile_4in_8out_32b`)
#  0:io_top_1.OE.in (module: `tristate_32b`)
#  0:io_top_1.in (module: `io_32b`)
#  0:io_top_1.reg_in.in (module: `register_32b`)
#  0:io_top_1.reg_in.m_in (module: `register_32b`)
#  0:io_top_1.reg_in.m_out (module: `register_32b`)
#  0:io_top_1.reg_in.out (module: `register_32b`)
#  0:io_top_1.reg_in.reg (module: `register_32b`)
#  0:pe_c1_r0.fu_to_rf (module: `adres_6in_vliw`)
#  0:pe_c1_r0.func.in_b (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r0.func.m_out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r0.func.out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r0.mux_b.in7 (module: `mux_8to1_32b`)
#  0:pe_c1_r0.mux_b.mux (module: `mux_8to1_32b`)
#  0:pe_c1_r0.mux_b.out (module: `mux_8to1_32b`)
#  0:pe_c1_r0.mux_out.in0 (module: `mux_2to1_32b`)
#  0:pe_c1_r0.mux_out.mux (module: `mux_2to1_32b`)
#  0:pe_c1_r0.mux_out.out (module: `mux_2to1_32b`)
#  0:pe_c1_r0.out (module: `adres_6in_vliw`)
#  0:pe_c1_r0.rf_to_muxout (module: `adres_6in_vliw`)
#
#add9_val_output:
#  0:pe_c0_r0.func.in_b (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r0.in4 (module: `adres_6in_vliw`)
#  0:pe_c0_r0.mux_b.in4 (module: `mux_8to1_32b`)
#  0:pe_c0_r0.mux_b.mux (module: `mux_8to1_32b`)
#  0:pe_c0_r0.mux_b.out (module: `mux_8to1_32b`)
#  0:pe_c0_r3.fu_to_rf (module: `adres_5in_vliw`)
#  0:pe_c0_r3.func.in_a (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r3.func.m_out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r3.func.out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r3.mux_a.in6 (module: `mux_7to1_32b`)
#  0:pe_c0_r3.mux_a.mux (module: `mux_7to1_32b`)
#  0:pe_c0_r3.mux_a.out (module: `mux_7to1_32b`)
#  0:pe_c0_r3.mux_out.in0 (module: `mux_2to1_32b`)
#  0:pe_c0_r3.mux_out.mux (module: `mux_2to1_32b`)
#  0:pe_c0_r3.mux_out.out (module: `mux_2to1_32b`)
#  0:pe_c0_r3.out (module: `adres_5in_vliw`)
#  0:pe_c0_r3.rf_to_muxa (module: `adres_5in_vliw`)
#  0:pe_c0_r3.rf_to_muxout (module: `adres_5in_vliw`)
#  0:pe_c1_r3.func.in_b (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r3.in3 (module: `adres_5in_vliw`)
#  0:pe_c1_r3.mux_b.in3 (module: `mux_7to1_32b`)
#  0:pe_c1_r3.mux_b.mux (module: `mux_7to1_32b`)
#  0:pe_c1_r3.mux_b.out (module: `mux_7to1_32b`)
#  0:rf_c0_r3.in0 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.out0 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.out0_m1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.out1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.out1_m1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.reg1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c0_r3.reg1_m0 (module: `registerFile_1in_2out_32b`)
#
#const1_val_output:
#  0:pe_c0_r0.const.out (module: `const_32b`)
#  0:pe_c0_r0.func.in_a (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r0.mux_a.in6 (module: `mux_8to1_32b`)
#  0:pe_c0_r0.mux_a.mux (module: `mux_8to1_32b`)
#  0:pe_c0_r0.mux_a.out (module: `mux_8to1_32b`)
#
#mul0_val_output:
#  0:drf.in0 (module: `registerFile_4in_8out_32b`)
#  0:drf.out5 (module: `registerFile_4in_8out_32b`)
#  0:drf.out5_m7 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg7 (module: `registerFile_4in_8out_32b`)
#  0:drf.reg7_m0 (module: `registerFile_4in_8out_32b`)
#  0:mem_0.in2 (module: `memoryPort_4connect_32b`)
#  0:mem_0.mem_unit.addr (module: `memUnit_32b`)
#  0:mem_0.mux_addr.in2 (module: `mux_4to1_32b`)
#  0:mem_0.mux_addr.mux (module: `mux_4to1_32b`)
#  0:mem_0.mux_addr.out (module: `mux_4to1_32b`)
#  0:pe_c0_r0.fu_to_rf (module: `adres_6in_vliw`)
#  0:pe_c0_r0.func.m_out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r0.func.out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c2_r0.mux_out.in0 (module: `mux_2to1_32b`)
#  0:pe_c2_r0.mux_out.mux (module: `mux_2to1_32b`)
#  0:pe_c2_r0.mux_out.out (module: `mux_2to1_32b`)
#  0:pe_c2_r0.out (module: `adres_6in_vliw`)
#  0:pe_c2_r0.rf_to_muxout (module: `adres_6in_vliw`)
#
#const4_val_output:
#  0:pe_c1_r3.const.out (module: `const_32b`)
#  0:pe_c1_r3.func.in_a (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r3.mux_a.in5 (module: `mux_7to1_32b`)
#  0:pe_c1_r3.mux_a.mux (module: `mux_7to1_32b`)
#  0:pe_c1_r3.mux_a.out (module: `mux_7to1_32b`)
#
#mul3_val_output:
#  0:mem_3.in1 (module: `memoryPort_4connect_32b`)
#  0:mem_3.mem_unit.addr (module: `memUnit_32b`)
#  0:mem_3.mux_addr.in1 (module: `mux_4to1_32b`)
#  0:mem_3.mux_addr.mux (module: `mux_4to1_32b`)
#  0:mem_3.mux_addr.out (module: `mux_4to1_32b`)
#  0:pe_c1_r3.fu_to_rf (module: `adres_5in_vliw`)
#  0:pe_c1_r3.func.m_out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r3.func.out (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c1_r3.mux_out.in0 (module: `mux_2to1_32b`)
#  0:pe_c1_r3.mux_out.mux (module: `mux_2to1_32b`)
#  0:pe_c1_r3.mux_out.out (module: `mux_2to1_32b`)
#  0:pe_c1_r3.out (module: `adres_5in_vliw`)
#  0:pe_c1_r3.rf_to_muxout (module: `adres_5in_vliw`)
#  0:rf_c1_r3.in0 (module: `registerFile_1in_2out_32b`)
#  0:rf_c1_r3.out1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c1_r3.out1_m1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c1_r3.reg1 (module: `registerFile_1in_2out_32b`)
#  0:rf_c1_r3.reg1_m0 (module: `registerFile_1in_2out_32b`)
#
#const10_val_output:
#  0:pe_c0_r3.const.out (module: `const_32b`)
#  0:pe_c0_r3.func.in_b (module: `func_32b_add_multiply_sub_and_or_xor_shl_ashr_lshr`)
#  0:pe_c0_r3.mux_b.in5 (module: `mux_7to1_32b`)
#  0:pe_c0_r3.mux_b.mux (module: `mux_7to1_32b`)
#  0:pe_c0_r3.mux_b.out (module: `mux_7to1_32b`)

puts "######## Disabling Unused Blocks ########"
# Uncommented == Unused PEs
#set_disable_timing pe_c0_r0
#set_disable_timing pe_c0_r0/*
#set_disable_timing pe_c0_r0/*/*
#set_disable_timing pe_c0_r0/*/*/*
set_disable_timing pe_c0_r1
set_disable_timing pe_c0_r1/*
set_disable_timing pe_c0_r1/*/*
set_disable_timing pe_c0_r1/*/*/*
set_disable_timing pe_c0_r2
set_disable_timing pe_c0_r2/*
set_disable_timing pe_c0_r2/*/*
set_disable_timing pe_c0_r2/*/*/*
#set_disable_timing pe_c0_r3
#set_disable_timing pe_c0_r3/*
#set_disable_timing pe_c0_r3/*/*
#set_disable_timing pe_c0_r3/*/*/*
#set_disable_timing pe_c1_r0
#set_disable_timing pe_c1_r0/*
#set_disable_timing pe_c1_r0/*/*
#set_disable_timing pe_c1_r0/*/*/*
set_disable_timing pe_c1_r1
set_disable_timing pe_c1_r1/*
set_disable_timing pe_c1_r1/*/*
set_disable_timing pe_c1_r1/*/*/*
set_disable_timing pe_c1_r2
set_disable_timing pe_c1_r2/*
set_disable_timing pe_c1_r2/*/*
set_disable_timing pe_c1_r2/*/*/*
#set_disable_timing pe_c1_r3
#set_disable_timing pe_c1_r3/*
#set_disable_timing pe_c1_r3/*/*
#set_disable_timing pe_c1_r3/*/*/*
#set_disable_timing pe_c2_r0
#set_disable_timing pe_c2_r0/*
#set_disable_timing pe_c2_r0/*/*
#set_disable_timing pe_c2_r0/*/*/*
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
#set_disable_timing pe_c3_r0
#set_disable_timing pe_c3_r0/*
#set_disable_timing pe_c3_r0/*/*
#set_disable_timing pe_c3_r0/*/*/*
set_disable_timing pe_c3_r1
set_disable_timing pe_c3_r1/*
set_disable_timing pe_c3_r1/*/*
set_disable_timing pe_c3_r1/*/*/*
set_disable_timing pe_c3_r2
set_disable_timing pe_c3_r2/*
set_disable_timing pe_c3_r2/*/*
set_disable_timing pe_c3_r2/*/*/*
#set_disable_timing pe_c3_r3
#set_disable_timing pe_c3_r3/*
#set_disable_timing pe_c3_r3/*/*
#set_disable_timing pe_c3_r3/*/*/*

# Use the following command to list used PEs:
# grep -r "0:\<pe_c.*_r.*\>" mapping_res.txt | awk -F '.' '{print $1}' | sort | uniq | head -nX | awk -F':' '{print $2}'
puts "######## Setting Correct Mux Select Signals ########"
#mem_0_mux_addr      mux_4to1_32b 2
set_case_analysis 0 mem_0_mux_addr/select[0]
set_case_analysis 1 mem_0_mux_addr/select[1]
set_disable_timing mem_0_mux_addr/in0
set_disable_timing mem_0_mux_addr/in1
set_disable_timing mem_0_mux_addr/in3

set_disable_timing mem_0_mux_data
set_disable_timing mem_0_mux_data/*
set_disable_timing mem_1_mux_addr
set_disable_timing mem_1_mux_addr/*
set_disable_timing mem_1_mux_data
set_disable_timing mem_1_mux_data/*
set_disable_timing mem_2_mux_addr
set_disable_timing mem_2_mux_addr/*
set_disable_timing mem_2_mux_data
set_disable_timing mem_2_mux_data/*

#mem_3_mux_addr      mux_4to1_32b 1
set_case_analysis 1 mem_3_mux_addr/select[0]
set_case_analysis 0 mem_3_mux_addr/select[1]
set_disable_timing mem_3_mux_addr/in0
set_disable_timing mem_3_mux_addr/in2
set_disable_timing mem_3_mux_addr/in3

set_disable_timing mem_3_mux_data
set_disable_timing mem_3_mux_data/*

#pe_c0_r0/mux_a      mux_8to1_32b 6
set_case_analysis 0 pe_c0_r0/mux_a/select[0]
set_case_analysis 1 pe_c0_r0/mux_a/select[1]
set_case_analysis 1 pe_c0_r0/mux_a/select[2]
set_disable_timing pe_c0_r0/mux_a/in0
set_disable_timing pe_c0_r0/mux_a/in1
set_disable_timing pe_c0_r0/mux_a/in2
set_disable_timing pe_c0_r0/mux_a/in3
set_disable_timing pe_c0_r0/mux_a/in4
set_disable_timing pe_c0_r0/mux_a/in5
set_disable_timing pe_c0_r0/mux_a/in7

#pe_c0_r0/mux_b      mux_8to1_32b 4
set_case_analysis 0 pe_c0_r0/mux_b/select[0]
set_case_analysis 0 pe_c0_r0/mux_b/select[1]
set_case_analysis 1 pe_c0_r0/mux_b/select[2]
set_disable_timing pe_c0_r0/mux_b/in0
set_disable_timing pe_c0_r0/mux_b/in1
set_disable_timing pe_c0_r0/mux_b/in2
set_disable_timing pe_c0_r0/mux_b/in3
set_disable_timing pe_c0_r0/mux_b/in5
set_disable_timing pe_c0_r0/mux_b/in6
set_disable_timing pe_c0_r0/mux_b/in7

set_disable_timing pe_c0_r0/mux_bypass
set_disable_timing pe_c0_r0/mux_bypass/*

#pe_c0_r0/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c0_r0/mux_out/select
set_disable_timing pe_c0_r0/mux_out/in1

set_disable_timing pe_c0_r1/mux_a
set_disable_timing pe_c0_r1/mux_a/*
set_disable_timing pe_c0_r1/mux_b
set_disable_timing pe_c0_r1/mux_b/*
set_disable_timing pe_c0_r1/mux_bypass
set_disable_timing pe_c0_r1/mux_bypass/*
set_disable_timing pe_c0_r1/mux_out
set_disable_timing pe_c0_r1/mux_out/*
set_disable_timing pe_c0_r2/mux_a
set_disable_timing pe_c0_r2/mux_a/*
set_disable_timing pe_c0_r2/mux_b
set_disable_timing pe_c0_r2/mux_b/*
set_disable_timing pe_c0_r2/mux_bypass
set_disable_timing pe_c0_r2/mux_bypass/*
set_disable_timing pe_c0_r2/mux_out
set_disable_timing pe_c0_r2/mux_out/*

#pe_c0_r3/mux_a      mux_7to1_32b 6
set_case_analysis 0 pe_c0_r3/mux_a/select[0]
set_case_analysis 1 pe_c0_r3/mux_a/select[1]
set_case_analysis 1 pe_c0_r3/mux_a/select[2]
set_disable_timing pe_c0_r3/mux_a/in0
set_disable_timing pe_c0_r3/mux_a/in1
set_disable_timing pe_c0_r3/mux_a/in2
set_disable_timing pe_c0_r3/mux_a/in3
set_disable_timing pe_c0_r3/mux_a/in4
set_disable_timing pe_c0_r3/mux_a/in5

#pe_c0_r3/mux_b      mux_7to1_32b 5
set_case_analysis 1 pe_c0_r3/mux_b/select[0]
set_case_analysis 0 pe_c0_r3/mux_b/select[1]
set_case_analysis 1 pe_c0_r3/mux_b/select[2]
set_disable_timing pe_c0_r3/mux_b/in0
set_disable_timing pe_c0_r3/mux_b/in1
set_disable_timing pe_c0_r3/mux_b/in2
set_disable_timing pe_c0_r3/mux_b/in3
set_disable_timing pe_c0_r3/mux_b/in4
set_disable_timing pe_c0_r3/mux_b/in6

set_disable_timing pe_c0_r3/mux_bypass
set_disable_timing pe_c0_r3/mux_bypass/*

#pe_c0_r3/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c0_r3/mux_out/select
set_disable_timing pe_c0_r3/mux_out/in1

#pe_c1_r0/mux_a      mux_8to1_32b 7
set_case_analysis 1 pe_c1_r0/mux_a/select[0]
set_case_analysis 1 pe_c1_r0/mux_a/select[1]
set_case_analysis 1 pe_c1_r0/mux_a/select[2]
set_disable_timing pe_c1_r0/mux_a/in0
set_disable_timing pe_c1_r0/mux_a/in1
set_disable_timing pe_c1_r0/mux_a/in2
set_disable_timing pe_c1_r0/mux_a/in3
set_disable_timing pe_c1_r0/mux_a/in4
set_disable_timing pe_c1_r0/mux_a/in5
set_disable_timing pe_c1_r0/mux_a/in6

#pe_c1_r0/mux_b      mux_8to1_32b 7
set_case_analysis 1 pe_c1_r0/mux_b/select[0]
set_case_analysis 1 pe_c1_r0/mux_b/select[1]
set_case_analysis 1 pe_c1_r0/mux_b/select[2]
set_disable_timing pe_c1_r0/mux_b/in0
set_disable_timing pe_c1_r0/mux_b/in1
set_disable_timing pe_c1_r0/mux_b/in2
set_disable_timing pe_c1_r0/mux_b/in3
set_disable_timing pe_c1_r0/mux_b/in4
set_disable_timing pe_c1_r0/mux_b/in5
set_disable_timing pe_c1_r0/mux_b/in6

set_disable_timing pe_c1_r0/mux_bypass
set_disable_timing pe_c1_r0/mux_bypass/*

#pe_c1_r0/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c1_r0/mux_out/select
set_disable_timing pe_c1_r0/mux_out/in1

set_disable_timing pe_c1_r1/mux_a
set_disable_timing pe_c1_r1/mux_a/*
set_disable_timing pe_c1_r1/mux_b
set_disable_timing pe_c1_r1/mux_b/*
set_disable_timing pe_c1_r1/mux_bypass
set_disable_timing pe_c1_r1/mux_bypass/*
set_disable_timing pe_c1_r1/mux_out
set_disable_timing pe_c1_r1/mux_out/*
set_disable_timing pe_c1_r2/mux_a
set_disable_timing pe_c1_r2/mux_a/*
set_disable_timing pe_c1_r2/mux_b
set_disable_timing pe_c1_r2/mux_b/*
set_disable_timing pe_c1_r2/mux_bypass
set_disable_timing pe_c1_r2/mux_bypass/*
set_disable_timing pe_c1_r2/mux_out
set_disable_timing pe_c1_r2/mux_out/*

#pe_c1_r3/mux_a      mux_7to1_32b 5
set_case_analysis 1 pe_c1_r3/mux_a/select[0]
set_case_analysis 0 pe_c1_r3/mux_a/select[1]
set_case_analysis 1 pe_c1_r3/mux_a/select[2]
set_disable_timing pe_c1_r3/mux_a/in0
set_disable_timing pe_c1_r3/mux_a/in1
set_disable_timing pe_c1_r3/mux_a/in2
set_disable_timing pe_c1_r3/mux_a/in3
set_disable_timing pe_c1_r3/mux_a/in4
set_disable_timing pe_c1_r3/mux_a/in6

#pe_c1_r3/mux_b      mux_7to1_32b 3
set_case_analysis 1 pe_c1_r3/mux_b/select[0]
set_case_analysis 1 pe_c1_r3/mux_b/select[1]
set_case_analysis 0 pe_c1_r3/mux_b/select[2]
set_disable_timing pe_c1_r3/mux_b/in0
set_disable_timing pe_c1_r3/mux_b/in1
set_disable_timing pe_c1_r3/mux_b/in2
set_disable_timing pe_c1_r3/mux_b/in4
set_disable_timing pe_c1_r3/mux_b/in5
set_disable_timing pe_c1_r3/mux_b/in6

set_disable_timing pe_c1_r3/mux_bypass
set_disable_timing pe_c1_r3/mux_bypass/*

#pe_c1_r3/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c1_r3/mux_out/select
set_disable_timing pe_c1_r3/mux_out/in1

set_disable_timing pe_c2_r0/mux_a
set_disable_timing pe_c2_r0/mux_a/*
set_disable_timing pe_c2_r0/mux_b
set_disable_timing pe_c2_r0/mux_b/*
set_disable_timing pe_c2_r0/mux_bypass
set_disable_timing pe_c2_r0/mux_bypass/*

#pe_c2_r0/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c2_r0/mux_out/select
set_disable_timing pe_c2_r0/mux_out/in1

set_disable_timing pe_c2_r1/mux_a
set_disable_timing pe_c2_r1/mux_b
set_disable_timing pe_c2_r1/mux_bypass
set_disable_timing pe_c2_r1/mux_out
set_disable_timing pe_c2_r2/mux_a
set_disable_timing pe_c2_r2/mux_b
set_disable_timing pe_c2_r2/mux_bypass
set_disable_timing pe_c2_r2/mux_out
set_disable_timing pe_c2_r3/mux_a
set_disable_timing pe_c2_r3/mux_b
set_disable_timing pe_c2_r3/mux_bypass
set_disable_timing pe_c2_r3/mux_out
set_disable_timing pe_c2_r1/mux_a/*
set_disable_timing pe_c2_r1/mux_b/*
set_disable_timing pe_c2_r1/mux_bypass/*
set_disable_timing pe_c2_r1/mux_out/*
set_disable_timing pe_c2_r2/mux_a/*
set_disable_timing pe_c2_r2/mux_b/*
set_disable_timing pe_c2_r2/mux_bypass/*
set_disable_timing pe_c2_r2/mux_out/*
set_disable_timing pe_c2_r3/mux_a/*
set_disable_timing pe_c2_r3/mux_b/*
set_disable_timing pe_c2_r3/mux_bypass/*
set_disable_timing pe_c2_r3/mux_out/*

#pe_c3_r0/mux_a      mux_8to1_32b 4
set_case_analysis 0 pe_c3_r0/mux_a/select[0]
set_case_analysis 0 pe_c3_r0/mux_a/select[1]
set_case_analysis 1 pe_c3_r0/mux_a/select[2]
set_disable_timing pe_c3_r0/mux_a/in0
set_disable_timing pe_c3_r0/mux_a/in1
set_disable_timing pe_c3_r0/mux_a/in2
set_disable_timing pe_c3_r0/mux_a/in3
set_disable_timing pe_c3_r0/mux_a/in5
set_disable_timing pe_c3_r0/mux_a/in6
set_disable_timing pe_c3_r0/mux_a/in7

#pe_c3_r0/mux_b      mux_8to1_32b 1
set_case_analysis 1 pe_c3_r0/mux_b/select[0]
set_case_analysis 0 pe_c3_r0/mux_b/select[1]
set_case_analysis 0 pe_c3_r0/mux_b/select[2]
set_disable_timing pe_c3_r0/mux_b/in0
set_disable_timing pe_c3_r0/mux_b/in2
set_disable_timing pe_c3_r0/mux_b/in3
set_disable_timing pe_c3_r0/mux_b/in4
set_disable_timing pe_c3_r0/mux_b/in5
set_disable_timing pe_c3_r0/mux_b/in6
set_disable_timing pe_c3_r0/mux_b/in7

set_disable_timing pe_c3_r0/mux_bypass
set_disable_timing pe_c3_r0/mux_bypass/*

#pe_c3_r0/mux_out    mux_2to1_32b 0
set_case_analysis 0 pe_c3_r0/mux_out/select
set_disable_timing pe_c3_r0/mux_out/in1

set_disable_timing pe_c3_r1/mux_a
set_disable_timing pe_c3_r1/mux_b
set_disable_timing pe_c3_r1/mux_bypass
set_disable_timing pe_c3_r1/mux_out
set_disable_timing pe_c3_r2/mux_a
set_disable_timing pe_c3_r2/mux_b
set_disable_timing pe_c3_r2/mux_bypass
set_disable_timing pe_c3_r2/mux_out
set_disable_timing pe_c3_r3/mux_a
set_disable_timing pe_c3_r3/mux_b
set_disable_timing pe_c3_r1/mux_a/*
set_disable_timing pe_c3_r1/mux_b/*
set_disable_timing pe_c3_r1/mux_bypass/*
set_disable_timing pe_c3_r1/mux_out/*
set_disable_timing pe_c3_r2/mux_a/*
set_disable_timing pe_c3_r2/mux_b/*
set_disable_timing pe_c3_r2/mux_bypass/*
set_disable_timing pe_c3_r2/mux_out/*
set_disable_timing pe_c3_r3/mux_a/*
set_disable_timing pe_c3_r3/mux_b/*

#pe_c3_r3/mux_bypass mux_5to1_32b 0
set_case_analysis 0 pe_c3_r3/mux_bypass/select[0]
set_case_analysis 0 pe_c3_r3/mux_bypass/select[1]
set_case_analysis 0 pe_c3_r3/mux_bypass/select[2]
set_disable_timing pe_c3_r3/mux_bypass/in1
set_disable_timing pe_c3_r3/mux_bypass/in2
set_disable_timing pe_c3_r3/mux_bypass/in3
set_disable_timing pe_c3_r3/mux_bypass/in4

#pe_c3_r3/mux_out    mux_2to1_32b 1
set_case_analysis 1 pe_c3_r3/mux_out/select

puts "######## Setting Correct OpCode ########"
#0: computation = add_sel;
#1: computation = mul_sel;
#2: computation = sub_sel;
#3: computation = and_sel;
#4: computation = or_sel;
#5: computation = xor_sel;
#6: computation = shl_sel;
#7: computation = ashr_sel;
#8: computation = lshr_sel;
#set_disable_timing pe_c0_r0/func
#set_disable_timing pe_c0_r0/func/*
set_disable_timing pe_c0_r1/func
set_disable_timing pe_c0_r1/func/*
set_disable_timing pe_c0_r2/func
set_disable_timing pe_c0_r2/func/*
#set_disable_timing pe_c0_r3/func
#set_disable_timing pe_c0_r3/func/*
#set_disable_timing pe_c1_r0/func
#set_disable_timing pe_c1_r0/func/*
set_disable_timing pe_c1_r1/func
set_disable_timing pe_c1_r1/func/*
set_disable_timing pe_c1_r2/func
set_disable_timing pe_c1_r2/func/*
#set_disable_timing pe_c1_r3/func
#set_disable_timing pe_c1_r3/func/*
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
#mul0
set_case_analysis 1 pe_c0_r0/func/select[0]
set_case_analysis 0 pe_c0_r0/func/select[1]
set_case_analysis 0 pe_c0_r0/func/select[2]
set_case_analysis 0 pe_c0_r0/func/select[3]
#mul3
set_case_analysis 1 pe_c1_r3/func/select[0]
set_case_analysis 0 pe_c1_r3/func/select[1]
set_case_analysis 0 pe_c1_r3/func/select[2]
set_case_analysis 0 pe_c1_r3/func/select[3]
#add7
set_case_analysis 0 pe_c1_r0/func/select[0]
set_case_analysis 0 pe_c1_r0/func/select[1]
set_case_analysis 0 pe_c1_r0/func/select[2]
set_case_analysis 0 pe_c1_r0/func/select[3]
#add9
set_case_analysis 0 pe_c0_r3/func/select[0]
set_case_analysis 0 pe_c0_r3/func/select[1]
set_case_analysis 0 pe_c0_r3/func/select[2]
set_case_analysis 0 pe_c0_r3/func/select[3]

puts "######## END ########"
