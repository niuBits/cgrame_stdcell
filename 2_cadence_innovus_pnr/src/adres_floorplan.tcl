# Local Dimension Parameters
set grid_x_min $margin
set grid_y_min $margin
set grid_x_max [expr $grid_x_min+$core_w]
set grid_y_max [expr $grid_y_min+$core_h-$drf_io_h]
set offset_x 1
set offset_y 1.5

# ADRES Top DRF and IO Row
createInstGroup drf_io
setObjFPlanBox Group drf_io $grid_x_min [expr $grid_y_max+$offset_y] [expr $core_w+$margin] [expr $core_h+$margin]
addInstToInstGroup drf_io drf
addInstToInstGroup drf_io io_top_0
addInstToInstGroup drf_io io_top_1
addInstToInstGroup drf_io io_top_2
addInstToInstGroup drf_io io_top_3

# ADRES PE Grid Hard Region
createInstGroup region_c0_r0
createInstGroup region_c0_r1
createInstGroup region_c0_r2
createInstGroup region_c0_r3
createInstGroup region_c1_r0
createInstGroup region_c1_r1
createInstGroup region_c1_r2
createInstGroup region_c1_r3
createInstGroup region_c2_r0
createInstGroup region_c2_r1
createInstGroup region_c2_r2
createInstGroup region_c2_r3
createInstGroup region_c3_r0
createInstGroup region_c3_r1
createInstGroup region_c3_r2
createInstGroup region_c3_r3
createRegion region_c0_r3 [expr $grid_x_min+($w*0)+$offset_x] [expr $grid_y_min+($h*0)+$offset_y] [expr $grid_x_min+($w*1)-$offset_x] [expr $grid_y_min+($h*1)-$offset_y]
createRegion region_c0_r2 [expr $grid_x_min+($w*0)+$offset_x] [expr $grid_y_min+($h*1)+$offset_y] [expr $grid_x_min+($w*1)-$offset_x] [expr $grid_y_min+($h*2)-$offset_y]
createRegion region_c0_r1 [expr $grid_x_min+($w*0)+$offset_x] [expr $grid_y_min+($h*2)+$offset_y] [expr $grid_x_min+($w*1)-$offset_x] [expr $grid_y_min+($h*3)-$offset_y]
createRegion region_c0_r0 [expr $grid_x_min+($w*0)+$offset_x] [expr $grid_y_min+($h*3)+$offset_y] [expr $grid_x_min+($w*1)-$offset_x] [expr $grid_y_min+($h*4)-$offset_y]
createRegion region_c1_r3 [expr $grid_x_min+($w*1)+$offset_x] [expr $grid_y_min+($h*0)+$offset_y] [expr $grid_x_min+($w*2)-$offset_x] [expr $grid_y_min+($h*1)-$offset_y]
createRegion region_c1_r2 [expr $grid_x_min+($w*1)+$offset_x] [expr $grid_y_min+($h*1)+$offset_y] [expr $grid_x_min+($w*2)-$offset_x] [expr $grid_y_min+($h*2)-$offset_y]
createRegion region_c1_r1 [expr $grid_x_min+($w*1)+$offset_x] [expr $grid_y_min+($h*2)+$offset_y] [expr $grid_x_min+($w*2)-$offset_x] [expr $grid_y_min+($h*3)-$offset_y]
createRegion region_c1_r0 [expr $grid_x_min+($w*1)+$offset_x] [expr $grid_y_min+($h*3)+$offset_y] [expr $grid_x_min+($w*2)-$offset_x] [expr $grid_y_min+($h*4)-$offset_y]
createRegion region_c2_r3 [expr $grid_x_min+($w*2)+$offset_x] [expr $grid_y_min+($h*0)+$offset_y] [expr $grid_x_min+($w*3)-$offset_x] [expr $grid_y_min+($h*1)-$offset_y]
createRegion region_c2_r2 [expr $grid_x_min+($w*2)+$offset_x] [expr $grid_y_min+($h*1)+$offset_y] [expr $grid_x_min+($w*3)-$offset_x] [expr $grid_y_min+($h*2)-$offset_y]
createRegion region_c2_r1 [expr $grid_x_min+($w*2)+$offset_x] [expr $grid_y_min+($h*2)+$offset_y] [expr $grid_x_min+($w*3)-$offset_x] [expr $grid_y_min+($h*3)-$offset_y]
createRegion region_c2_r0 [expr $grid_x_min+($w*2)+$offset_x] [expr $grid_y_min+($h*3)+$offset_y] [expr $grid_x_min+($w*3)-$offset_x] [expr $grid_y_min+($h*4)-$offset_y]
createRegion region_c3_r3 [expr $grid_x_min+($w*3)+$offset_x] [expr $grid_y_min+($h*0)+$offset_y] [expr $grid_x_min+($w*4)-$offset_x] [expr $grid_y_min+($h*1)-$offset_y]
createRegion region_c3_r2 [expr $grid_x_min+($w*3)+$offset_x] [expr $grid_y_min+($h*1)+$offset_y] [expr $grid_x_min+($w*4)-$offset_x] [expr $grid_y_min+($h*2)-$offset_y]
createRegion region_c3_r1 [expr $grid_x_min+($w*3)+$offset_x] [expr $grid_y_min+($h*2)+$offset_y] [expr $grid_x_min+($w*4)-$offset_x] [expr $grid_y_min+($h*3)-$offset_y]
createRegion region_c3_r0 [expr $grid_x_min+($w*3)+$offset_x] [expr $grid_y_min+($h*3)+$offset_y] [expr $grid_x_min+($w*4)-$offset_x] [expr $grid_y_min+($h*4)-$offset_y]
addInstToInstGroup region_c0_r0 pe_c0_r0
addInstToInstGroup region_c0_r1 pe_c0_r1
addInstToInstGroup region_c0_r2 pe_c0_r2
addInstToInstGroup region_c0_r3 pe_c0_r3
addInstToInstGroup region_c1_r0 pe_c1_r0
addInstToInstGroup region_c1_r1 pe_c1_r1
addInstToInstGroup region_c1_r2 pe_c1_r2
addInstToInstGroup region_c1_r3 pe_c1_r3
addInstToInstGroup region_c2_r0 pe_c2_r0
addInstToInstGroup region_c2_r1 pe_c2_r1
addInstToInstGroup region_c2_r2 pe_c2_r2
addInstToInstGroup region_c2_r3 pe_c2_r3
addInstToInstGroup region_c3_r0 pe_c3_r0
addInstToInstGroup region_c3_r1 pe_c3_r1
addInstToInstGroup region_c3_r2 pe_c3_r2
addInstToInstGroup region_c3_r3 pe_c3_r3
addInstToInstGroup region_c0_r1 rf_c0_r1
addInstToInstGroup region_c0_r2 rf_c0_r2
addInstToInstGroup region_c0_r3 rf_c0_r3
addInstToInstGroup region_c1_r1 rf_c1_r1
addInstToInstGroup region_c1_r2 rf_c1_r2
addInstToInstGroup region_c1_r3 rf_c1_r3
addInstToInstGroup region_c2_r1 rf_c2_r1
addInstToInstGroup region_c2_r2 rf_c2_r2
addInstToInstGroup region_c2_r3 rf_c2_r3
addInstToInstGroup region_c3_r1 rf_c3_r1
addInstToInstGroup region_c3_r2 rf_c3_r2
addInstToInstGroup region_c3_r3 rf_c3_r3

