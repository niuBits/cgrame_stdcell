# Whole Chip
createInstGroup cgra
setObjFPlanBox Group cgra 0 0 $chip_w $chip_h

# Top DRF + IO
# setObjFPlanBox Group <group_name> llx lly urx ury 
createInstGroup top
setObjFPlanBox Group top 0 $grid_h $chip_w $chip_h
addInstToInstGroup top drf
addInstToInstGroup top io_top_0
addInstToInstGroup top io_top_1
addInstToInstGroup top io_top_2
addInstToInstGroup top io_top_3

# ADRES PE Grid Floorplan
createInstGroup c0_r0
createInstGroup c0_r1
createInstGroup c0_r2
createInstGroup c0_r3
createInstGroup c1_r0
createInstGroup c1_r1
createInstGroup c1_r2
createInstGroup c1_r3
createInstGroup c2_r0
createInstGroup c2_r1
createInstGroup c2_r2
createInstGroup c2_r3
createInstGroup c3_r0
createInstGroup c3_r1
createInstGroup c3_r2
createInstGroup c3_r3
setObjFPlanBox Group c0_r0 [expr $w*0] [expr $grid_h-($h*(0+1))] [expr $w*(0+1)] [expr $grid_h-($h*0)]
setObjFPlanBox Group c0_r1 [expr $w*0] [expr $grid_h-($h*(1+1))] [expr $w*(0+1)] [expr $grid_h-($h*1)]
setObjFPlanBox Group c0_r2 [expr $w*0] [expr $grid_h-($h*(2+1))] [expr $w*(0+1)] [expr $grid_h-($h*2)]
setObjFPlanBox Group c0_r3 [expr $w*0] [expr $grid_h-($h*(3+1))] [expr $w*(0+1)] [expr $grid_h-($h*3)]
setObjFPlanBox Group c1_r0 [expr $w*1] [expr $grid_h-($h*(0+1))] [expr $w*(1+1)] [expr $grid_h-($h*0)]
setObjFPlanBox Group c1_r1 [expr $w*1] [expr $grid_h-($h*(1+1))] [expr $w*(1+1)] [expr $grid_h-($h*1)]
setObjFPlanBox Group c1_r2 [expr $w*1] [expr $grid_h-($h*(2+1))] [expr $w*(1+1)] [expr $grid_h-($h*2)]
setObjFPlanBox Group c1_r3 [expr $w*1] [expr $grid_h-($h*(3+1))] [expr $w*(1+1)] [expr $grid_h-($h*3)]
setObjFPlanBox Group c2_r0 [expr $w*2] [expr $grid_h-($h*(0+1))] [expr $w*(2+1)] [expr $grid_h-($h*0)]
setObjFPlanBox Group c2_r1 [expr $w*2] [expr $grid_h-($h*(1+1))] [expr $w*(2+1)] [expr $grid_h-($h*1)]
setObjFPlanBox Group c2_r2 [expr $w*2] [expr $grid_h-($h*(2+1))] [expr $w*(2+1)] [expr $grid_h-($h*2)]
setObjFPlanBox Group c2_r3 [expr $w*2] [expr $grid_h-($h*(3+1))] [expr $w*(2+1)] [expr $grid_h-($h*3)]
setObjFPlanBox Group c3_r0 [expr $w*3] [expr $grid_h-($h*(0+1))] [expr $w*(3+1)] [expr $grid_h-($h*0)]
setObjFPlanBox Group c3_r1 [expr $w*3] [expr $grid_h-($h*(1+1))] [expr $w*(3+1)] [expr $grid_h-($h*1)]
setObjFPlanBox Group c3_r2 [expr $w*3] [expr $grid_h-($h*(2+1))] [expr $w*(3+1)] [expr $grid_h-($h*2)]
setObjFPlanBox Group c3_r3 [expr $w*3] [expr $grid_h-($h*(3+1))] [expr $w*(3+1)] [expr $grid_h-($h*3)]

# PE RF Assignments to Groups
addInstToInstGroup c0_r0 pe_c0_r0
addInstToInstGroup c0_r1 pe_c0_r1
addInstToInstGroup c0_r2 pe_c0_r2
addInstToInstGroup c0_r3 pe_c0_r3
addInstToInstGroup c1_r0 pe_c1_r0
addInstToInstGroup c1_r1 pe_c1_r1
addInstToInstGroup c1_r2 pe_c1_r2
addInstToInstGroup c1_r3 pe_c1_r3
addInstToInstGroup c2_r0 pe_c2_r0
addInstToInstGroup c2_r1 pe_c2_r1
addInstToInstGroup c2_r2 pe_c2_r2
addInstToInstGroup c2_r3 pe_c2_r3
addInstToInstGroup c3_r0 pe_c3_r0
addInstToInstGroup c3_r1 pe_c3_r1
addInstToInstGroup c3_r2 pe_c3_r2
addInstToInstGroup c3_r3 pe_c3_r3
addInstToInstGroup c0_r1 rf_c0_r1
addInstToInstGroup c0_r2 rf_c0_r2
addInstToInstGroup c0_r3 rf_c0_r3
addInstToInstGroup c1_r1 rf_c1_r1
addInstToInstGroup c1_r2 rf_c1_r2
addInstToInstGroup c1_r3 rf_c1_r3
addInstToInstGroup c2_r1 rf_c2_r1
addInstToInstGroup c2_r2 rf_c2_r2
addInstToInstGroup c2_r3 rf_c2_r3
addInstToInstGroup c3_r1 rf_c3_r1
addInstToInstGroup c3_r2 rf_c3_r2
addInstToInstGroup c3_r3 rf_c3_r3

