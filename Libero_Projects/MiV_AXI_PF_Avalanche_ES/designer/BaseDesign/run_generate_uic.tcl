set_device \
    -fam PolarFire \
    -die PA5M300T_ES \
    -pkg fcg484
set_proj_dir \
    -path {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES}
set_impl_dir \
    -path {C:\GitHub-LSRAM-12.3\Future-Avalanche-Board\Libero_Projects\MiV_AXI_PF_Avalanche_ES\designer\BaseDesign}
set_first_stage \
    -address 00000000
set_second_stage \
    -uprom_address 00000000 \
    -snvm_address 00000000 \
    -spi_address 00000400 \
    -spi_binding spi_noauth \
   -ramBrodcast 1
set_override_file \
    -path {}
set_auto_calib_timeout \
    -value {3000}
