# Import FreePDK45 timing library as object `timing_libs`
create_library_set -name timing_libs -timing [list /autofs/fs1.ece/fs1.eecg.janders/niukuang/Research/repos/NangateOpenCellLibrary_PDKv1_3_v2010_12/Front_End/Liberty/CCS/NangateOpenCellLibrary_typical_ccs.lib]

# Associates delay corner object `delay_corner` with `timing_libs`
create_delay_corner -name delay_corner -library_set timing_libs

# Associates constraint object `constraints` with constraints specification file `./cnstr.sdc`
create_constraint_mode -name constraints -sdc_files [list cnstr.sdc]

# Associates new `analysis_view` object with `delay_corner` and `constraints` objects
create_analysis_view -name analysis_view -delay_corner delay_corner -constraint_mode constraints

# `analysis_view` will be our only held analysis view
set_analysis_view -setup analysis_view -hold analysis_view
