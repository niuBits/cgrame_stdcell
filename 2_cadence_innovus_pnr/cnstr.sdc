create_clock -name CGRA_Clock -period 0.55 CGRA_Clock
create_clock -name Config_Clock -period 16 Config_Clock

set_load 1.5 [all_outputs]
set_drive 1.5 [all_inputs]

set_clock_latency 0.5 CGRA_Clock
set_clock_uncertainty 0.1 -setup CGRA_Clock
