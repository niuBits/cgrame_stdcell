# Generic Env
set init_design_uniquify 1
set init_mmmc_file "init_mmmc.tcl"

# Conventional Power Signals
set init_pwr_net "VDD"
set init_gnd_net "VSS"

# Std Cell Library
set init_lef_file "/autofs/fs1.ece/fs1.eecg.janders/niukuang/Research/repos/NangateOpenCellLibrary_PDKv1_3_v2010_12/Back_End/lef/NangateOpenCellLibrary.lef"

# Design Verilog
set init_verilog "src/cgra.v"
set init_top_cell "cgra"

file mkdir ./report

init_design
