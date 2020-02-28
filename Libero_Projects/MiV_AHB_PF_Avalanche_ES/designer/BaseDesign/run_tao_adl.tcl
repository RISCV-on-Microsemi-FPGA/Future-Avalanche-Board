set_family {PolarFire}
read_adl {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.adl}
read_afl {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.afl}
map_netlist
read_sdc {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\constraint\BaseDesign_derived_constraints.sdc}
read_sdc {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\constraint\io_jtag_constraints.sdc}
check_constraints {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\constraint\placer_sdc_errors.log}
write_sdc -strict -afl {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign\place_route.sdc}
