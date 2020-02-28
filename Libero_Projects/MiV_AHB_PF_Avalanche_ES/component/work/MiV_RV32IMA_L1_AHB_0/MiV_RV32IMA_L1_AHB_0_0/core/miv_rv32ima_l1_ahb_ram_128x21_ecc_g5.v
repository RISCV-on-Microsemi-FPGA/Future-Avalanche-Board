// Version: PolarFire v2.2 12.200.30.10
`ifndef RANDOMIZE_REG_INIT 
	 `define RANDOMIZE_REG_INIT 
 `endif
`ifndef RANDOMIZE_MEM_INIT 
	 `define RANDOMIZE_MEM_INIT 
 `endif
`ifndef RANDOMIZE 
	 `define RANDOMIZE 
`endif

`timescale 1ns/10ps

module MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_128x21_ECC(
       WD,
       RD,
       WADDR,
       RADDR,
       WEN,
       CLK,
       SB_CORRECT,
       DB_DETECT
    );
parameter ECC_EN = 1; 
input  [20:0] WD;
output [20:0] RD;
input  [6:0] WADDR;
input  [6:0] RADDR;
input  WEN;
input  CLK;
output SB_CORRECT;
output DB_DETECT;

    reg WEN_reg;
    wire SB_CORRECT_int;
    wire DB_DETECT_int;
    wire \ACCESS_BUSY[0][0] , VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;

	assign SB_CORRECT = (WEN_reg) ? 1'b0 : SB_CORRECT_int;
	assign DB_DETECT = (WEN_reg) ? 1'b0 : DB_DETECT_int;

    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
always @(posedge CLK)
  begin
     WEN_reg <= WEN;
  end 

    RAM1K20 #( .RAMINDEX("RAM_ECC_0%128-128%21-21%SPEED%0%0%TWO-PORT")
    //,.WARNING_MSGS_ON(0)
         )  RAM_ECC_RAM_ECC_0_PF_TPSRAM_R0C0 (.A_DOUT({nc0, nc1, nc2, 
        nc3, nc4, nc5, nc6, nc7, nc8, nc9, nc10, nc11, nc12, nc13, 
        nc14, nc15, RD[20], RD[19], RD[18], RD[17]}), 
        .B_DOUT({nc16, nc17, nc18, RD[16], RD[15], RD[14], 
        RD[13], RD[12], RD[11], RD[10], RD[9], 
        RD[8], RD[7], RD[6], RD[5], RD[4], 
        RD[3], RD[2], RD[1], RD[0]}), .DB_DETECT(
        DB_DETECT_int), .SB_CORRECT(SB_CORRECT_int), .ACCESS_BUSY(
        \ACCESS_BUSY[0][0] ), .A_ADDR({GND, GND, RADDR[6], RADDR[5], 
        RADDR[4], RADDR[3], RADDR[2], RADDR[1], RADDR[0], GND, 
        GND, GND, GND, GND}), .A_BLK_EN({VCC, VCC, VCC}), .A_CLK(CLK), 
        .A_DIN({GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, GND, 
        GND, GND, GND, GND, GND, WD[20], WD[19], WD[18], 
        WD[17]}), .A_REN(VCC), .A_WEN({WEN, WEN}), .A_DOUT_EN(VCC), 
        .A_DOUT_ARST_N(VCC), .A_DOUT_SRST_N(VCC), .B_ADDR({GND, GND, 
        WADDR[6], WADDR[5], WADDR[4], WADDR[3], WADDR[2], 
        WADDR[1], WADDR[0], GND, GND, GND, GND, GND}), .B_BLK_EN({
        WEN, VCC, VCC}), .B_CLK(CLK), .B_DIN({GND, GND, GND, 
        WD[16], WD[15], WD[14], WD[13], WD[12], 
        WD[11], WD[10], WD[9], WD[8], WD[7], 
        WD[6], WD[5], WD[4], WD[3], WD[2], 
        WD[1], WD[0]}), .B_REN(VCC), .B_WEN({WEN, WEN}), 
        .B_DOUT_EN(VCC), .B_DOUT_ARST_N(VCC), .B_DOUT_SRST_N(VCC), 
        .ECC_EN(ECC_EN[0]), .BUSY_FB(GND), .A_WIDTH({VCC, GND, VCC}), 
        .A_WMODE({GND, GND}), .A_BYPASS(VCC), .B_WIDTH({VCC, GND, VCC})
        , .B_WMODE({GND, GND}), .B_BYPASS(VCC), .ECC_BYPASS(VCC));
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule