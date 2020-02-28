# Written by Synplify Pro version mapact2018q4p1, Build 026R. Synopsys Run ID: sid1582892089 
# Top Level Design Parameters 

# Clocks 
create_clock -period 166.670 -waveform {0.000 83.330} -name {TCK} [get_ports {TCK}] 
create_clock -period 6.250 -waveform {0.000 3.125} -name {PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK} [get_pins {PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK}] 
create_clock -period 10.000 -waveform {0.000 5.000} -name {COREJTAGDEBUG_Z11|iUDRCK_inferred_clock} [get_pins {CoreJTAGDebug_0_inst_0/CoreJTAGDebug_0_0/genblk1.genblk1.genblk1.UJTAG_inst/UDRCK}] 

# Virtual Clocks 

# Generated Clocks 
create_generated_clock -name {PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0} -multiply_by {5} -divide_by {16} -source [get_pins {PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160_INT/Y}]  [get_pins {PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0}] 

# Paths Between Clocks 

# Multicycle Constraints 

# Point-to-point Delay Constraints 

# False Path Constraints 

# Output Load Constraints 

# Driving Cell Constraints 

# Input Delay Constraints 

# Output Delay Constraints 

# Wire Loads 

# Other Constraints 

# syn_hier Attributes 

# set_case Attributes 

# Clock Delay Constraints 
set_clock_groups -asynchronous -group [get_clocks {COREJTAGDEBUG_Z11|iUDRCK_inferred_clock}]

# syn_mode Attributes 

# Cells 

# Port DRC Rules 

# Input Transition Constraints 

# Unused constraints (intentionally commented out) 

# Non-forward-annotatable constraints (intentionally commented out) 

# Block Path constraints 

