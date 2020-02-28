//////////////////////////////////////////////////////////////////////
// Created by SmartDesign Tue Feb 25 13:15:56 2020
// Version: v12.3 12.800.0.16
//////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// BaseDesign
module BaseDesign(
    // Inputs
    GPIO_IN,
    RX,
    TCK,
    TDI,
    TMS,
    TRSTB,
    USER_RST,
    // Outputs
    GPIO_OUT,
    TDO,
    TX
);

//--------------------------------------------------------------------
// Input
//--------------------------------------------------------------------
input  [1:0] GPIO_IN;
input        RX;
input        TCK;
input        TDI;
input        TMS;
input        TRSTB;
input        USER_RST;
//--------------------------------------------------------------------
// Output
//--------------------------------------------------------------------
output [3:0] GPIO_OUT;
output       TDO;
output       TX;
//--------------------------------------------------------------------
// Nets
//--------------------------------------------------------------------
wire   [31:0] CoreAHBL_0_AHBmslave7_HADDR;
wire   [2:0]  CoreAHBL_0_AHBmslave7_HBURST;
wire          CoreAHBL_0_AHBmslave7_HMASTLOCK;
wire   [3:0]  CoreAHBL_0_AHBmslave7_HPROT;
wire   [31:0] CoreAHBL_0_AHBmslave7_HRDATA;
wire          CoreAHBL_0_AHBmslave7_HREADY;
wire          CoreAHBL_0_AHBmslave7_HREADYOUT;
wire   [1:0]  CoreAHBL_0_AHBmslave7_HRESP;
wire          CoreAHBL_0_AHBmslave7_HSELx;
wire   [2:0]  CoreAHBL_0_AHBmslave7_HSIZE;
wire   [1:0]  CoreAHBL_0_AHBmslave7_HTRANS;
wire   [31:0] CoreAHBL_0_AHBmslave7_HWDATA;
wire          CoreAHBL_0_AHBmslave7_HWRITE;
wire   [31:0] CoreAHBL_0_AHBmslave8_HADDR;
wire   [2:0]  CoreAHBL_0_AHBmslave8_HBURST;
wire          CoreAHBL_0_AHBmslave8_HMASTLOCK;
wire   [3:0]  CoreAHBL_0_AHBmslave8_HPROT;
wire   [31:0] CoreAHBL_0_AHBmslave8_HRDATA;
wire          CoreAHBL_0_AHBmslave8_HREADY;
wire          CoreAHBL_0_AHBmslave8_HREADYOUT;
wire   [1:0]  CoreAHBL_0_AHBmslave8_HRESP;
wire          CoreAHBL_0_AHBmslave8_HSELx;
wire   [2:0]  CoreAHBL_0_AHBmslave8_HSIZE;
wire   [1:0]  CoreAHBL_0_AHBmslave8_HTRANS;
wire   [31:0] CoreAHBL_0_AHBmslave8_HWDATA;
wire          CoreAHBL_0_AHBmslave8_HWRITE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PADDR;
wire          COREAHBTOAPB3_0_APBmaster_PENABLE;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PRDATA;
wire          COREAHBTOAPB3_0_APBmaster_PREADY;
wire          COREAHBTOAPB3_0_APBmaster_PSELx;
wire          COREAHBTOAPB3_0_APBmaster_PSLVERR;
wire   [31:0] COREAHBTOAPB3_0_APBmaster_PWDATA;
wire          COREAHBTOAPB3_0_APBmaster_PWRITE;
wire          CoreAPB3_0_APBmslave1_PENABLE;
wire          CoreAPB3_0_APBmslave1_PREADY;
wire          CoreAPB3_0_APBmslave1_PSELx;
wire          CoreAPB3_0_APBmslave1_PSLVERR;
wire          CoreAPB3_0_APBmslave1_PWRITE;
wire   [31:0] CoreAPB3_0_APBmslave2_PRDATA;
wire          CoreAPB3_0_APBmslave2_PREADY;
wire          CoreAPB3_0_APBmslave2_PSELx;
wire          CoreAPB3_0_APBmslave2_PSLVERR;
wire   [31:0] CoreAPB3_0_APBmslave3_PRDATA;
wire          CoreAPB3_0_APBmslave3_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave4_PRDATA;
wire          CoreAPB3_0_APBmslave4_PSELx;
wire   [31:0] CoreAPB3_0_APBmslave5_PRDATA;
wire          CoreAPB3_0_APBmslave5_PREADY;
wire          CoreAPB3_0_APBmslave5_PSELx;
wire          CoreAPB3_0_APBmslave5_PSLVERR;
wire          CoreJTAGDebug_0_TGT_TCK_0;
wire          CoreJTAGDebug_0_TGT_TDI_0;
wire          CoreJTAGDebug_0_TGT_TMS_0;
wire          CoreJTAGDebug_0_TGT_TRSTB_0;
wire          CoreRESET_PF_0_FABRIC_RESET_N;
wire          CoreTimer_0_TIMINT;
wire          CoreTimer_1_TIMINT;
wire   [1:0]  GPIO_IN;
wire   [3:0]  GPIO_OUT_net_0;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HADDR;
wire   [2:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HBURST;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HLOCK;
wire   [3:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HPROT;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRDATA;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HREADY;
wire   [2:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HSIZE;
wire   [1:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HTRANS;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWDATA;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWRITE;
wire   [2:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HBURST;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HLOCK;
wire   [3:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HPROT;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRDATA;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HREADY;
wire   [2:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HSIZE;
wire   [1:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HTRANS;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWDATA;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWRITE;
wire          MiV_RV32IMA_L1_AHB_0_TDO;
wire          PF_CCC_0_OUT0_FABCLK_0;
wire          PF_CCC_0_PLL_LOCK_0;
wire          PF_INIT_MONITOR_0_DEVICE_INIT_DONE;
wire          PF_OSC_0_RCOSC_160MHZ_GL;
wire          RX;
wire          TCK;
wire          TDI;
wire          TDO_net_0;
wire          TMS;
wire          TRSTB;
wire          TX_net_0;
wire          USER_RST;
wire          TDO_net_1;
wire          TX_net_1;
wire   [3:0]  GPIO_OUT_net_1;
wire   [30:0] IRQ_net_0;
//--------------------------------------------------------------------
// TiedOff Nets
//--------------------------------------------------------------------
wire          GND_net;
wire   [3:0]  GPIO_IN_const_net_0;
wire          VCC_net;
wire   [28:0] IRQ_const_net_0;
//--------------------------------------------------------------------
// Bus Interface Nets Declarations - Unequal Pin Widths
//--------------------------------------------------------------------
wire   [31:0] CoreAPB3_0_APBmslave1_PADDR;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_2;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_1;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PADDR_4;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3_4to2;
wire   [4:2]  CoreAPB3_0_APBmslave1_PADDR_3;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0_4to0;
wire   [4:0]  CoreAPB3_0_APBmslave1_PADDR_0;
wire   [31:8] CoreAPB3_0_APBmslave1_PRDATA_0_31to8;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA_0_7to0;
wire   [31:0] CoreAPB3_0_APBmslave1_PRDATA_0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PRDATA;
wire   [31:0] CoreAPB3_0_APBmslave1_PWDATA;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0_7to0;
wire   [7:0]  CoreAPB3_0_APBmslave1_PWDATA_0;
wire   [0:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0_0to0;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0;
wire   [1:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP;
wire   [30:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR;
wire   [31:31]MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_31to31;
wire   [30:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_30to0;
wire   [31:0] MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0;
wire   [1:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP;
wire   [0:0]  MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0_0to0;
wire          MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0;
//--------------------------------------------------------------------
// Constant assignments
//--------------------------------------------------------------------
assign GND_net             = 1'b0;
assign GPIO_IN_const_net_0 = 4'h0;
assign VCC_net             = 1'b1;
assign IRQ_const_net_0     = 29'h00000000;
//--------------------------------------------------------------------
// Top level output port assignments
//--------------------------------------------------------------------
assign TDO_net_1      = TDO_net_0;
assign TDO            = TDO_net_1;
assign TX_net_1       = TX_net_0;
assign TX             = TX_net_1;
assign GPIO_OUT_net_1 = GPIO_OUT_net_0;
assign GPIO_OUT[3:0]  = GPIO_OUT_net_1;
//--------------------------------------------------------------------
// Concatenation assignments
//--------------------------------------------------------------------
assign IRQ_net_0 = { CoreTimer_1_TIMINT , CoreTimer_0_TIMINT , 29'h00000000 };
//--------------------------------------------------------------------
// Bus Interface Nets Assignments - Unequal Pin Widths
//--------------------------------------------------------------------
assign CoreAPB3_0_APBmslave1_PADDR_2_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_2 = { CoreAPB3_0_APBmslave1_PADDR_2_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_1_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_1 = { CoreAPB3_0_APBmslave1_PADDR_1_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_4_7to0 = CoreAPB3_0_APBmslave1_PADDR[7:0];
assign CoreAPB3_0_APBmslave1_PADDR_4 = { CoreAPB3_0_APBmslave1_PADDR_4_7to0 };
assign CoreAPB3_0_APBmslave1_PADDR_3_4to2 = CoreAPB3_0_APBmslave1_PADDR[4:2];
assign CoreAPB3_0_APBmslave1_PADDR_3 = { CoreAPB3_0_APBmslave1_PADDR_3_4to2 };
assign CoreAPB3_0_APBmslave1_PADDR_0_4to0 = CoreAPB3_0_APBmslave1_PADDR[4:0];
assign CoreAPB3_0_APBmslave1_PADDR_0 = { CoreAPB3_0_APBmslave1_PADDR_0_4to0 };

assign CoreAPB3_0_APBmslave1_PRDATA_0_31to8 = 24'h0;
assign CoreAPB3_0_APBmslave1_PRDATA_0_7to0 = CoreAPB3_0_APBmslave1_PRDATA[7:0];
assign CoreAPB3_0_APBmslave1_PRDATA_0 = { CoreAPB3_0_APBmslave1_PRDATA_0_31to8, CoreAPB3_0_APBmslave1_PRDATA_0_7to0 };

assign CoreAPB3_0_APBmslave1_PWDATA_0_7to0 = CoreAPB3_0_APBmslave1_PWDATA[7:0];
assign CoreAPB3_0_APBmslave1_PWDATA_0 = { CoreAPB3_0_APBmslave1_PWDATA_0_7to0 };

assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0_0to0 = MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP[0:0];
assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0 = { MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0_0to0 };

assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_31to31 = 1'b0;
assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_30to0 = MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR[30:0];
assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0 = { MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_31to31, MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0_30to0 };

assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0_0to0 = MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP[0:0];
assign MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0 = { MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0_0to0 };

//--------------------------------------------------------------------
// Component instances
//--------------------------------------------------------------------
//--------CoreAHBL_0
CoreAHBL_0 CoreAHBL_0_inst_0(
        // Inputs
        .HCLK         ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN      ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .REMAP_M0     ( GND_net ),
        .HADDR_M0     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR_0 ),
        .HTRANS_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HTRANS ),
        .HWRITE_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWRITE ),
        .HSIZE_M0     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HSIZE ),
        .HBURST_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HBURST ),
        .HPROT_M0     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HPROT ),
        .HWDATA_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWDATA ),
        .HMASTLOCK_M0 ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HLOCK ),
        .HADDR_M1     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HADDR ),
        .HTRANS_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HTRANS ),
        .HWRITE_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWRITE ),
        .HSIZE_M1     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HSIZE ),
        .HBURST_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HBURST ),
        .HPROT_M1     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HPROT ),
        .HWDATA_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWDATA ),
        .HMASTLOCK_M1 ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HLOCK ),
        .HRDATA_S7    ( CoreAHBL_0_AHBmslave7_HRDATA ),
        .HREADYOUT_S7 ( CoreAHBL_0_AHBmslave7_HREADYOUT ),
        .HRESP_S7     ( CoreAHBL_0_AHBmslave7_HRESP ),
        .HRDATA_S8    ( CoreAHBL_0_AHBmslave8_HRDATA ),
        .HREADYOUT_S8 ( CoreAHBL_0_AHBmslave8_HREADYOUT ),
        .HRESP_S8     ( CoreAHBL_0_AHBmslave8_HRESP ),
        // Outputs
        .HRDATA_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRDATA ),
        .HREADY_M0    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HREADY ),
        .HRESP_M0     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP ),
        .HRDATA_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRDATA ),
        .HREADY_M1    ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HREADY ),
        .HRESP_M1     ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP ),
        .HADDR_S7     ( CoreAHBL_0_AHBmslave7_HADDR ),
        .HTRANS_S7    ( CoreAHBL_0_AHBmslave7_HTRANS ),
        .HWRITE_S7    ( CoreAHBL_0_AHBmslave7_HWRITE ),
        .HSIZE_S7     ( CoreAHBL_0_AHBmslave7_HSIZE ),
        .HWDATA_S7    ( CoreAHBL_0_AHBmslave7_HWDATA ),
        .HSEL_S7      ( CoreAHBL_0_AHBmslave7_HSELx ),
        .HREADY_S7    ( CoreAHBL_0_AHBmslave7_HREADY ),
        .HMASTLOCK_S7 ( CoreAHBL_0_AHBmslave7_HMASTLOCK ),
        .HBURST_S7    ( CoreAHBL_0_AHBmslave7_HBURST ),
        .HPROT_S7     ( CoreAHBL_0_AHBmslave7_HPROT ),
        .HADDR_S8     ( CoreAHBL_0_AHBmslave8_HADDR ),
        .HTRANS_S8    ( CoreAHBL_0_AHBmslave8_HTRANS ),
        .HWRITE_S8    ( CoreAHBL_0_AHBmslave8_HWRITE ),
        .HSIZE_S8     ( CoreAHBL_0_AHBmslave8_HSIZE ),
        .HWDATA_S8    ( CoreAHBL_0_AHBmslave8_HWDATA ),
        .HSEL_S8      ( CoreAHBL_0_AHBmslave8_HSELx ),
        .HREADY_S8    ( CoreAHBL_0_AHBmslave8_HREADY ),
        .HMASTLOCK_S8 ( CoreAHBL_0_AHBmslave8_HMASTLOCK ),
        .HBURST_S8    ( CoreAHBL_0_AHBmslave8_HBURST ),
        .HPROT_S8     ( CoreAHBL_0_AHBmslave8_HPROT ) 
        );

//--------COREAHBTOAPB3_0
COREAHBTOAPB3_0 COREAHBTOAPB3_0_inst_0(
        // Inputs
        .HCLK      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .HADDR     ( CoreAHBL_0_AHBmslave7_HADDR ),
        .HTRANS    ( CoreAHBL_0_AHBmslave7_HTRANS ),
        .HWRITE    ( CoreAHBL_0_AHBmslave7_HWRITE ),
        .HWDATA    ( CoreAHBL_0_AHBmslave7_HWDATA ),
        .HSEL      ( CoreAHBL_0_AHBmslave7_HSELx ),
        .HREADY    ( CoreAHBL_0_AHBmslave7_HREADY ),
        .PRDATA    ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        .PREADY    ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        // Outputs
        .HRDATA    ( CoreAHBL_0_AHBmslave7_HRDATA ),
        .HREADYOUT ( CoreAHBL_0_AHBmslave7_HREADYOUT ),
        .HRESP     ( CoreAHBL_0_AHBmslave7_HRESP ),
        .PADDR     ( COREAHBTOAPB3_0_APBmaster_PADDR ),
        .PSEL      ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .PENABLE   ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PWDATA    ( COREAHBTOAPB3_0_APBmaster_PWDATA ) 
        );

//--------CoreAPB3_0
CoreAPB3_0 CoreAPB3_0_inst_0(
        // Inputs
        .PADDR     ( COREAHBTOAPB3_0_APBmaster_PADDR ),
        .PSEL      ( COREAHBTOAPB3_0_APBmaster_PSELx ),
        .PENABLE   ( COREAHBTOAPB3_0_APBmaster_PENABLE ),
        .PWRITE    ( COREAHBTOAPB3_0_APBmaster_PWRITE ),
        .PWDATA    ( COREAHBTOAPB3_0_APBmaster_PWDATA ),
        .PRDATAS1  ( CoreAPB3_0_APBmslave1_PRDATA_0 ),
        .PREADYS1  ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERRS1 ( CoreAPB3_0_APBmslave1_PSLVERR ),
        .PRDATAS2  ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PREADYS2  ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERRS2 ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .PRDATAS3  ( CoreAPB3_0_APBmslave3_PRDATA ),
        .PREADYS3  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS3 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS4  ( CoreAPB3_0_APBmslave4_PRDATA ),
        .PREADYS4  ( VCC_net ), // tied to 1'b1 from definition
        .PSLVERRS4 ( GND_net ), // tied to 1'b0 from definition
        .PRDATAS5  ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PREADYS5  ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERRS5 ( CoreAPB3_0_APBmslave5_PSLVERR ),
        // Outputs
        .PRDATA    ( COREAHBTOAPB3_0_APBmaster_PRDATA ),
        .PREADY    ( COREAHBTOAPB3_0_APBmaster_PREADY ),
        .PSLVERR   ( COREAHBTOAPB3_0_APBmaster_PSLVERR ),
        .PADDRS    ( CoreAPB3_0_APBmslave1_PADDR ),
        .PENABLES  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITES   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATAS   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .PSELS1    ( CoreAPB3_0_APBmslave1_PSELx ),
        .PSELS2    ( CoreAPB3_0_APBmslave2_PSELx ),
        .PSELS3    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PSELS4    ( CoreAPB3_0_APBmslave4_PSELx ),
        .PSELS5    ( CoreAPB3_0_APBmslave5_PSELx ) 
        );

//--------CoreGPIO_IN
CoreGPIO_IN CoreGPIO_IN_inst_0(
        // Inputs
        .PRESETN  ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_1 ),
        .PSEL     ( CoreAPB3_0_APBmslave2_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN ),
        // Outputs
        .PRDATA   ( CoreAPB3_0_APBmslave2_PRDATA ),
        .PREADY   ( CoreAPB3_0_APBmslave2_PREADY ),
        .PSLVERR  ( CoreAPB3_0_APBmslave2_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT (  ) 
        );

//--------CoreGPIO_OUT
CoreGPIO_OUT CoreGPIO_OUT_inst_0(
        // Inputs
        .PRESETN  ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PCLK     ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PADDR    ( CoreAPB3_0_APBmslave1_PADDR_4 ),
        .PSEL     ( CoreAPB3_0_APBmslave5_PSELx ),
        .PENABLE  ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE   ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA   ( CoreAPB3_0_APBmslave1_PWDATA ),
        .GPIO_IN  ( GPIO_IN_const_net_0 ),
        // Outputs
        .PRDATA   ( CoreAPB3_0_APBmslave5_PRDATA ),
        .PREADY   ( CoreAPB3_0_APBmslave5_PREADY ),
        .PSLVERR  ( CoreAPB3_0_APBmslave5_PSLVERR ),
        .INT      (  ),
        .GPIO_OUT ( GPIO_OUT_net_0 ) 
        );

//--------CoreJTAGDebug_0
CoreJTAGDebug_0 CoreJTAGDebug_0_inst_0(
        // Inputs
        .TRSTB       ( TRSTB ),
        .TCK         ( TCK ),
        .TMS         ( TMS ),
        .TDI         ( TDI ),
        .TGT_TDO_0   ( MiV_RV32IMA_L1_AHB_0_TDO ),
        // Outputs
        .TDO         ( TDO_net_0 ),
        .TGT_TRSTB_0 ( CoreJTAGDebug_0_TGT_TRSTB_0 ),
        .TGT_TCK_0   ( CoreJTAGDebug_0_TGT_TCK_0 ),
        .TGT_TMS_0   ( CoreJTAGDebug_0_TGT_TMS_0 ),
        .TGT_TDI_0   ( CoreJTAGDebug_0_TGT_TDI_0 ) 
        );

//--------CoreRESET_PF_0
CoreRESET_PF_0 CoreRESET_PF_0_inst_0(
        // Inputs
        .CLK                ( PF_CCC_0_OUT0_FABCLK_0 ),
        .EXT_RST_N          ( USER_RST ),
        .BANK_x_VDDI_STATUS ( VCC_net ),
        .BANK_y_VDDI_STATUS ( VCC_net ),
        .PLL_LOCK           ( PF_CCC_0_PLL_LOCK_0 ),
        .SS_BUSY            ( GND_net ),
        .INIT_DONE          ( PF_INIT_MONITOR_0_DEVICE_INIT_DONE ),
        .FF_US_RESTORE      ( GND_net ),
        .FPGA_POR_N         ( GND_net ),
        // Outputs
        .PLL_POWERDOWN_B    (  ),
        .FABRIC_RESET_N     ( CoreRESET_PF_0_FABRIC_RESET_N ) 
        );

//--------CoreTimer_0
CoreTimer_0 CoreTimer_0_inst_0(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave3_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_2 ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_0_TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave3_PRDATA ) 
        );

//--------CoreTimer_1
CoreTimer_1 CoreTimer_1_inst_0(
        // Inputs
        .PCLK    ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETn ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .PSEL    ( CoreAPB3_0_APBmslave4_PSELx ),
        .PENABLE ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PADDR   ( CoreAPB3_0_APBmslave1_PADDR_3 ),
        .PWRITE  ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA  ( CoreAPB3_0_APBmslave1_PWDATA ),
        // Outputs
        .TIMINT  ( CoreTimer_1_TIMINT ),
        .PRDATA  ( CoreAPB3_0_APBmslave4_PRDATA ) 
        );

//--------CoreUARTapb_0
CoreUARTapb_0 CoreUARTapb_0_inst_0(
        // Inputs
        .PCLK        ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PRESETN     ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .RX          ( RX ),
        .PADDR       ( CoreAPB3_0_APBmslave1_PADDR_0 ),
        .PSEL        ( CoreAPB3_0_APBmslave1_PSELx ),
        .PENABLE     ( CoreAPB3_0_APBmslave1_PENABLE ),
        .PWRITE      ( CoreAPB3_0_APBmslave1_PWRITE ),
        .PWDATA      ( CoreAPB3_0_APBmslave1_PWDATA_0 ),
        // Outputs
        .TXRDY       (  ),
        .RXRDY       (  ),
        .PARITY_ERR  (  ),
        .OVERFLOW    (  ),
        .TX          ( TX_net_0 ),
        .FRAMING_ERR (  ),
        .PRDATA      ( CoreAPB3_0_APBmslave1_PRDATA ),
        .PREADY      ( CoreAPB3_0_APBmslave1_PREADY ),
        .PSLVERR     ( CoreAPB3_0_APBmslave1_PSLVERR ) 
        );

//--------MiV_RV32IMA_L1_AHB_0
MiV_RV32IMA_L1_AHB_0 MiV_RV32IMA_L1_AHB_0_inst_0(
        // Inputs
        .CLK                 ( PF_CCC_0_OUT0_FABCLK_0 ),
        .RESETN              ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .IRQ                 ( IRQ_net_0 ),
        .TDI                 ( CoreJTAGDebug_0_TGT_TDI_0 ),
        .TCK                 ( CoreJTAGDebug_0_TGT_TCK_0 ),
        .TMS                 ( CoreJTAGDebug_0_TGT_TMS_0 ),
        .TRST                ( CoreJTAGDebug_0_TGT_TRSTB_0 ),
        .AHB_MST_MEM_HRDATA  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRDATA ),
        .AHB_MST_MEM_HREADY  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HREADY ),
        .AHB_MST_MEM_HRESP   ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HRESP_0 ),
        .AHB_MST_MMIO_HRDATA ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRDATA ),
        .AHB_MST_MMIO_HREADY ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HREADY ),
        .AHB_MST_MMIO_HRESP  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HRESP_0 ),
        // Outputs
        .AHB_MST_MEM_HSEL    (  ),
        .AHB_MST_MMIO_HSEL   (  ),
        .TDO                 ( MiV_RV32IMA_L1_AHB_0_TDO ),
        .EXT_RESETN          (  ),
        .DRV_TDO             (  ),
        .AHB_MST_MEM_HADDR   ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HADDR ),
        .AHB_MST_MEM_HTRANS  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HTRANS ),
        .AHB_MST_MEM_HWRITE  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWRITE ),
        .AHB_MST_MEM_HSIZE   ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HSIZE ),
        .AHB_MST_MEM_HBURST  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HBURST ),
        .AHB_MST_MEM_HPROT   ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HPROT ),
        .AHB_MST_MEM_HWDATA  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HWDATA ),
        .AHB_MST_MEM_HLOCK   ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MEM_HLOCK ),
        .AHB_MST_MMIO_HADDR  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HADDR ),
        .AHB_MST_MMIO_HTRANS ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HTRANS ),
        .AHB_MST_MMIO_HWRITE ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWRITE ),
        .AHB_MST_MMIO_HSIZE  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HSIZE ),
        .AHB_MST_MMIO_HBURST ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HBURST ),
        .AHB_MST_MMIO_HPROT  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HPROT ),
        .AHB_MST_MMIO_HWDATA ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HWDATA ),
        .AHB_MST_MMIO_HLOCK  ( MiV_RV32IMA_L1_AHB_0_AHB_MST_MMIO_HLOCK ) 
        );

//--------PF_CCC_0
PF_CCC_0 PF_CCC_0_inst_0(
        // Inputs
        .REF_CLK_0     ( PF_OSC_0_RCOSC_160MHZ_GL ),
        // Outputs
        .OUT0_FABCLK_0 ( PF_CCC_0_OUT0_FABCLK_0 ),
        .PLL_LOCK_0    ( PF_CCC_0_PLL_LOCK_0 ) 
        );

//--------PF_INIT_MONITOR_0
PF_INIT_MONITOR_0 PF_INIT_MONITOR_0_inst_0(
        // Outputs
        .FABRIC_POR_N               (  ),
        .PCIE_INIT_DONE             (  ),
        .USRAM_INIT_DONE            (  ),
        .SRAM_INIT_DONE             (  ),
        .DEVICE_INIT_DONE           ( PF_INIT_MONITOR_0_DEVICE_INIT_DONE ),
        .XCVR_INIT_DONE             (  ),
        .USRAM_INIT_FROM_SNVM_DONE  (  ),
        .USRAM_INIT_FROM_UPROM_DONE (  ),
        .USRAM_INIT_FROM_SPI_DONE   (  ),
        .SRAM_INIT_FROM_SNVM_DONE   (  ),
        .SRAM_INIT_FROM_UPROM_DONE  (  ),
        .SRAM_INIT_FROM_SPI_DONE    (  ),
        .AUTOCALIB_DONE             (  ) 
        );

//--------PF_OSC_0
PF_OSC_0 PF_OSC_0_inst_0(
        // Outputs
        .RCOSC_160MHZ_GL ( PF_OSC_0_RCOSC_160MHZ_GL ) 
        );

//--------PF_SRAM_0
PF_SRAM_0 PF_SRAM_0_inst_0(
        // Inputs
        .HCLK      ( PF_CCC_0_OUT0_FABCLK_0 ),
        .HRESETN   ( CoreRESET_PF_0_FABRIC_RESET_N ),
        .HADDR     ( CoreAHBL_0_AHBmslave8_HADDR ),
        .HTRANS    ( CoreAHBL_0_AHBmslave8_HTRANS ),
        .HWRITE    ( CoreAHBL_0_AHBmslave8_HWRITE ),
        .HSIZE     ( CoreAHBL_0_AHBmslave8_HSIZE ),
        .HBURST    ( CoreAHBL_0_AHBmslave8_HBURST ),
        .HWDATA    ( CoreAHBL_0_AHBmslave8_HWDATA ),
        .HSEL      ( CoreAHBL_0_AHBmslave8_HSELx ),
        .HREADYIN  ( CoreAHBL_0_AHBmslave8_HREADY ),
        // Outputs
        .HRDATA    ( CoreAHBL_0_AHBmslave8_HRDATA ),
        .HREADYOUT ( CoreAHBL_0_AHBmslave8_HREADYOUT ),
        .HRESP     ( CoreAHBL_0_AHBmslave8_HRESP ) 
        );


endmodule
