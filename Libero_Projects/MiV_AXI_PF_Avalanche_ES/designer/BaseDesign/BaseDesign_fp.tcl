new_project \
         -name {BaseDesign} \
         -location {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {MPF300T_ES} \
         -name {MPF300T_ES}
enable_device \
         -name {MPF300T_ES} \
         -enable {TRUE}
save_project
close_project
