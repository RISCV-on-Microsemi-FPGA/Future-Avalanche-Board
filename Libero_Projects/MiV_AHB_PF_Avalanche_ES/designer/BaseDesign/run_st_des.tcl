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
set_def {GUI_PROJECT_PATH} {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\MiV_AHB_BaseDesign.prjx}
set_def USE_CONSTRAINTS_FLOW 1
set_name BaseDesign
set_workdir {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AHB_PF_Avalanche_ES\designer\BaseDesign}
set_design_state post_layout
set_operating_conditions -name slow_lv_lt
set_operating_conditions -name fast_hv_lt
set_operating_conditions -name slow_lv_ht
