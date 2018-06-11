# Save PnR-ed Netlist
saveNetlist netlist/cgra.v

# Generate Report
deselectAll
summaryReport -outdir report

# Generate RC
extractRC
rcOut -spef netlist/cgra.spef

# Save Design
saveDesign cgra.innovus
