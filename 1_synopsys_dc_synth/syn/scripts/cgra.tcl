variable top_level_design cgra cgra
# TODO: Set list of modules to retain hierarchy separation, e.g. "io", "RegisterFile_1_2", etc.
variable dont_touches {}

# Generate design IR(analyze) -> build(elaborate)
# TODO: Set list to name all original HDL verilog files
analyze -f verilog -library work [list ]

# Tag all modules keeping for hierarchy
foreach mod $dont_touches {
    elaborate -library work $mod
    current_design $mod
#    set_load 1.5 [all_outputs]
#    set_drive 1.5 [all_inputs]
#    if {$mod=="io"} {
#        set_max_delay -from [all_inputs] -to [all_outputs] 0
#    } else {
#        set_max_area 0
#    }
#    set_max_delay -from [all_inputs] -to [all_outputs] 0
    set_max_area 0
    compile
    set_dont_touch $mod
    check_design -multiple_designs
    write_file -format verilog -hierarchy -output "syn/netlist/$mod.v"
    report_timing > "syn/reports/timing_$mod.rpt"
    report_area -hierarchy > "syn/reports/area_$mod.rpt"
    report_cell > "syn/reports/cell_$mod.rpt"
    report_hierarchy > "syn/reports/hierarchy_$mod.rpt"
}

elaborate -library work $top_level_design
current_design $top_level_design 

# Constraints
set_load 6 [all_outputs]
set_drive 6 [all_inputs]
#set_max_delay -from [all_inputs] -to [all_outputs] 0
set_max_area 0
##NOTE: Below is a test fix
#set_false_path -from io_top_0/CGRA_Clock -to io_top_0/bidir
#set_false_path -from io_top_1/CGRA_Clock -to io_top_1/bidir
#set_false_path -from io_top_2/CGRA_Clock -to io_top_2/bidir
#set_false_path -from io_top_3/CGRA_Clock -to io_top_3/bidir
#set_disable_timing io_top_0/OE
#set_disable_timing io_top_1/OE
#set_disable_timing io_top_2/OE
#set_disable_timing io_top_3/OE
# #ext_io_top_0
# #ext_io_top_1
# #ext_io_top_2
# #ext_io_top_3

# Resolve design references(link) and remove duplication(uniquify)
link
uniquify

# Logic-level and gate-level synthesis + optimization
compile -ungroup_all -map_effort high
compile -incremental_mapping -map_effort high

# Generate netlist
change_names -hier -rule verilog
write_file -format verilog -hierarchy -output "syn/netlist/${top_level_design}.v"

# Report results
#report_timing -max_paths 20 > syn/reports/timing_cgra.rpt
report_timing > syn/reports/timing_cgra.rpt
report_area -hierarchy > syn/reports/area_cgra.rpt
report_cell > syn/reports/cell_cgra.rpt
report_hierarchy > syn/reports/hierarchy_cgra.rpt

exit
