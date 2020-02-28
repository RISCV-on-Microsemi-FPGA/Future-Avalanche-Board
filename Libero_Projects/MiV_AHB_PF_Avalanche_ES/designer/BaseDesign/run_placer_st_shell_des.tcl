set_device \
    -family  PolarFire \
    -die     PA5M300T_ES \
    -package fcg484 \
    -speed   STD \
    -tempr   {IND} \
    -voltr   {IND}
set_def {VOLTAGE} {1.0}
set_def {VCCI_1.2_VOLTR} {EXT}
set_def {VCCI_1.5_VOLTR} {EXT}
set_def {VCCI_1.8_VOLTR} {EXT}
set_def {VCCI_2.5_VOLTR} {EXT}
set_def {VCCI_3.3_VOLTR} {EXT}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name BaseDesign
set_workdir {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign}
set_log     {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign\BaseDesign_sdc.log}
set_design_state pre_layout
