# GEOMETRY INFO: Variables below are specifically used in pin.tcl and floorplan.tcl

# TODO: Manually edit the following geometry parameters
# Chip Dimension
set core_w 330
set core_aspect_ratio 1.2
# DRF Height
set drf_io_h 35
# Core Margin
set margin 5

# BEGIN - Inferred Geometries
# Core Height ( = coreWidth * aspectRatio)
set core_h [expr $core_w*$core_aspect_ratio]
# PE Grid Dimension
set grid_w $core_w
set grid_h [expr $core_h-$drf_io_h]
# PE Dimension
set w [expr $grid_w/4]
set h [expr $grid_h/4]
# END - Inferred Geometries

# ADRES Floor Planning:
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -s $core_w $core_h $margin $margin $margin $margin
fit
source src/adres_pin.tcl
source src/adres_floorplan.tcl

# Add Power Ring:
# threshold: 0.1 um from ring to adjacent block
# layer_*: specifies which metal layer used for side *
# center: center the core ring between I/O pads and core boundaries (offset relates with this param)
addRing \
    -spacing 1 \
    -width 1 \
    -layer_top M1 \
    -layer_bottom M1 \
    -layer_right M2 \
    -layer_left M2 \
    -center 1 \
    -offset 0.1 \
    -stacked_via_top_layer AP \
    -stacked_via_bottom_layer M1 \
    -around power_domain \
    -jog_distance 0.1 \
    -threshold 0.1 \
    -nets {VSS VDD}

# Place Std Cells
setMultiCpuUsage -localCpu max
setPlaceMode -fp false
placeDesign -prePlaceOpt
win

