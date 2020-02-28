open_project -project {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign_fp\BaseDesign.pro}\
         -connect_programmers {FALSE}
load_programming_data \
    -name {MPF300T_ES} \
    -fpga {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.map} \
    -header {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.hdr} \
    -envm {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.efc} \
    -spm {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.spm} \
    -dca {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign\BaseDesign.dca}
export_single_ppd \
    -name {MPF300T_ES} \
    -file {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\FlashPro_Express_Projects\Programming_Files/tempExport\BaseDesign_PF_Avalanche_ES_AXI_ProgramFile.ppd}

save_project
close_project
