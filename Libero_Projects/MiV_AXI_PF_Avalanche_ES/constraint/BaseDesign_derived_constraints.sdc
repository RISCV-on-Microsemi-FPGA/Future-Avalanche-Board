# Microsemi Corp.
# Date: 2020-Feb-28 12:14:24
# This file was generated based on the following SDC source files:
#   C:/GitHub-LSRAM-12.3/Future-Avalanche-Board/Libero_Projects/MiV_AXI_PF_Avalanche_ES/component/work/PF_CCC_0/PF_CCC_0_0/PF_CCC_0_PF_CCC_0_0_PF_CCC.sdc
#   C:/Microsemi/Libero_SoC_v12.3/Designer/data/aPA5M/cores/constraints/osc_rc160mhz.sdc
#

create_clock -name {PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK} -period 6.25 [ get_pins { PF_OSC_0_inst_0/PF_OSC_0_0/I_OSC_160/CLK } ]
create_generated_clock -name {PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0} -multiply_by 5 -divide_by 16 -source [ get_pins { PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { PF_CCC_0_inst_0/PF_CCC_0_0/pll_inst_0/OUT0 } ]
