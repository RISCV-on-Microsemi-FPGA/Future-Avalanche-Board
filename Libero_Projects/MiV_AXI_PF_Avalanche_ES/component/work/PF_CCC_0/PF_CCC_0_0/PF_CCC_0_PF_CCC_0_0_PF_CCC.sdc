set_component PF_CCC_0_PF_CCC_0_0_PF_CCC
# Microsemi Corp.
# Date: 2020-Feb-28 12:12:47
#

# Base clock for PLL #0
create_clock -period 6.25 [ get_pins { pll_inst_0/REF_CLK_0 } ]
create_generated_clock -multiply_by 5 -divide_by 16 -source [ get_pins { pll_inst_0/REF_CLK_0 } ] -phase 0 [ get_pins { pll_inst_0/OUT0 } ]
