# GEOMETRY INFO: Variables below are specifically used in pin.tcl and floorplan.tcl
# Chip Dimension
# TODO: Edit geometry
set chip_w 320
set chip_h 384
# DRF Height
set drf_io_h 35
# PE Grid Dimension
set grid_w $chip_w
set grid_h [expr $chip_h-$drf_io_h]
# PE Dimension
set w [expr $grid_w/4]
set h [expr $grid_h/4]

# ADRES Floor Planning:
# - Top side needs more space for DRF, hence aspectratio(h/w) = 1.2
# - ContentArea / CoreArea = 0.85
# - Margin of 5 units top, bottom, left, & right margins
floorPlan -site FreePDK45_38x28_10R_NP_162NW_34O -r 1.2 0.85 5 5 5 5
source src/adres_pin.tcl
fit

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
setPlaceMode -fp false
placeDesign -prePlaceOpt

