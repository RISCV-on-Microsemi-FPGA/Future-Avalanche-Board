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

module MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_2048x32_ECC(
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
input  [31:0] WD;
output [31:0] RD;
input  [10:0] WADDR;
input  [10:0] RADDR;
input  WEN;
input  CLK;
output SB_CORRECT;
output DB_DETECT;

    reg WEN_reg;
    reg [10:0] RADDR_reg;
    wire [3:0] SB_CORRECT_int;
    wire [3:0] DB_DETECT_int;

    wire WEN_0, WEN_1, WEN_2, WEN_3;
    wire [31:0] RD_0, RD_1, RD_2, RD_3;
    wire  VCC, GND, ADLIB_VCC;
    wire GND_power_net1;
    wire VCC_power_net1;
    assign GND = GND_power_net1;
    assign VCC = VCC_power_net1;
    assign ADLIB_VCC = VCC_power_net1;
    
	assign SB_CORRECT = (WEN_reg) ? 1'b0 : (RADDR_reg[10:9] == 2'b00) ? SB_CORRECT_int[0] :
	                                       (RADDR_reg[10:9] == 2'b01) ? SB_CORRECT_int[1] :
	                                       (RADDR_reg[10:9] == 2'b10) ? SB_CORRECT_int[2] :
	                                       (RADDR_reg[10:9] == 2'b11) ? SB_CORRECT_int[3] : 1'b0;

	assign DB_DETECT = (WEN_reg) ? 1'b0 : (RADDR_reg[10:9] == 2'b00) ? DB_DETECT_int[0] :
	                                      (RADDR_reg[10:9] == 2'b01) ? DB_DETECT_int[1] :
	                                      (RADDR_reg[10:9] == 2'b10) ? DB_DETECT_int[2] :
	                                      (RADDR_reg[10:9] == 2'b11) ? DB_DETECT_int[3] : 1'b0;

	assign WEN_0 = (WADDR[10:9] == 2'b00) ? WEN : 1'b0;
	assign WEN_1 = (WADDR[10:9] == 2'b01) ? WEN : 1'b0;
	assign WEN_2 = (WADDR[10:9] == 2'b10) ? WEN : 1'b0;
	assign WEN_3 = (WADDR[10:9] == 2'b11) ? WEN : 1'b0;
	
	assign RD = (RADDR_reg[10:9] == 2'b00) ? RD_0 :
	            (RADDR_reg[10:9] == 2'b01) ? RD_1 :
	            (RADDR_reg[10:9] == 2'b10) ? RD_2 :
	            (RADDR_reg[10:9] == 2'b11) ? RD_3 : 1'b0;
	
always @(posedge CLK)
  begin
     WEN_reg <= WEN;
     RADDR_reg <= RADDR;
  end 

    RAM1K20 #( .RAMINDEX("RAM_512_WEN_0%512-512%32-32%SPEED%0%0%TWO-PORT")
         )  RAM_512_WEN_RAM_512_WEN_0_PF_TPSRAM_R0C0 (
		 .A_DOUT({nc0, nc1, nc2, nc3, nc00, RD_0[31:17]}), 
		 .B_DOUT({nc4, nc5, nc6, RD_0[16:0]}), 
		.DB_DETECT(DB_DETECT_int[0]), 
        .SB_CORRECT(SB_CORRECT_int[0]), 
		.ACCESS_BUSY( ), 
        .A_ADDR({RADDR[8:0], GND, GND, GND, GND, GND}), 
		.A_BLK_EN({VCC, VCC, VCC}), 
		.A_CLK(CLK), 
		.A_DIN({GND, GND, GND, GND, GND, WD[31:17]}),  
		.A_REN(VCC), 
		.A_WEN({WEN_0, WEN_0}),
        .B_WEN({WEN_0, WEN_0}), 
		.A_DOUT_EN(VCC),
		.A_DOUT_ARST_N(VCC), 
		.A_DOUT_SRST_N(VCC), 
		.B_ADDR({WADDR[8:0], GND, GND, GND, GND, GND}), 
		.B_BLK_EN({WEN_0, VCC, VCC}), 
		.B_CLK(CLK), 
        .B_DIN({GND, GND, GND, WD[16:0]}),  
		.B_REN(VCC), 
		.B_DOUT_EN(VCC), 
		.B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), 
		.ECC_EN(ECC_EN[0]), 
		.BUSY_FB(GND), 
		.A_WIDTH({VCC, GND, VCC}), 
		.A_WMODE({GND, GND}),
		.A_BYPASS(VCC), 
        .B_WIDTH({VCC, GND, VCC}), 
		.B_WMODE({GND, GND}),
		.B_BYPASS(VCC), .ECC_BYPASS(VCC));
	
    RAM1K20 #( .RAMINDEX("RAM_512_WEN_0%512-512%32-32%SPEED%0%0%TWO-PORT")
         )  RAM_512_WEN_RAM_512_WEN_0_PF_TPSRAM_R1C0 (
		 .A_DOUT({nc7, nc8, nc9, nc10, nc01, RD_1[31:17]}), 
		 .B_DOUT({nc12, nc13, nc14, RD_1[16:0]}), 
		.DB_DETECT(DB_DETECT_int[1]), 
        .SB_CORRECT(SB_CORRECT_int[1]), 
		.ACCESS_BUSY( ), 
        .A_ADDR({RADDR[8:0], GND, GND, GND, GND, GND}), 
		.A_BLK_EN({VCC, VCC, VCC}), 
		.A_CLK(CLK), 
		.A_DIN({GND, GND, GND, GND, GND, WD[31:17]}),  
		.A_REN(VCC), 
		.A_WEN({WEN_1, WEN_1}),
        .B_WEN({WEN_1, WEN_1}), 
		.A_DOUT_EN(VCC),
		.A_DOUT_ARST_N(VCC), 
		.A_DOUT_SRST_N(VCC), 
		.B_ADDR({WADDR[8:0], GND, GND, GND, GND, GND}), 
		.B_BLK_EN({WEN_1, VCC, VCC}), 
		.B_CLK(CLK), 
        .B_DIN({GND, GND, GND, WD[16:0]}),  
		.B_REN(VCC), 
		.B_DOUT_EN(VCC), 
		.B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), 
		.ECC_EN(ECC_EN[0]), 
		.BUSY_FB(GND), 
		.A_WIDTH({VCC, GND, VCC}), 
		.A_WMODE({GND, GND}),
		.A_BYPASS(VCC), 
        .B_WIDTH({VCC, GND, VCC}), 
		.B_WMODE({GND, GND}),
		.B_BYPASS(VCC), .ECC_BYPASS(VCC));
	
    RAM1K20 #( .RAMINDEX("RAM_512_WEN_0%512-512%32-32%SPEED%0%0%TWO-PORT")
         )  RAM_512_WEN_RAM_512_WEN_0_PF_TPSRAM_R2C0 (
		 .A_DOUT({nc15, nc16, nc17, nc18, nc02, RD_2[31:17]}), 
		 .B_DOUT({nc19, nc20, nc21, RD_2[16:0]}), 
		.DB_DETECT(DB_DETECT_int[2]), 
        .SB_CORRECT(SB_CORRECT_int[2]), 
		.ACCESS_BUSY( ), 
        .A_ADDR({RADDR[8:0], GND, GND, GND, GND, GND}), 
		.A_BLK_EN({VCC, VCC, VCC}), 
		.A_CLK(CLK), 
		.A_DIN({GND, GND, GND, GND, GND, WD[31:17]}),  
		.A_REN(VCC), 
		.A_WEN({WEN_2, WEN_2}),
        .B_WEN({WEN_2, WEN_2}), 
		.A_DOUT_EN(VCC),
		.A_DOUT_ARST_N(VCC), 
		.A_DOUT_SRST_N(VCC), 
		.B_ADDR({WADDR[8:0], GND, GND, GND, GND, GND}), 
		.B_BLK_EN({WEN_2, VCC, VCC}), 
		.B_CLK(CLK), 
        .B_DIN({GND, GND, GND, WD[16:0]}),  
		.B_REN(VCC), 
		.B_DOUT_EN(VCC), 
		.B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), 
		.ECC_EN(ECC_EN[0]), 
		.BUSY_FB(GND), 
		.A_WIDTH({VCC, GND, VCC}), 
		.A_WMODE({GND, GND}),
		.A_BYPASS(VCC), 
        .B_WIDTH({VCC, GND, VCC}), 
		.B_WMODE({GND, GND}),
		.B_BYPASS(VCC), .ECC_BYPASS(VCC));
	
    RAM1K20 #( .RAMINDEX("RAM_512_WEN_0%512-512%32-32%SPEED%0%0%TWO-PORT")
         )  RAM_512_WEN_RAM_512_WEN_0_PF_TPSRAM_R3C0 (
		 .A_DOUT({nc22, nc23, nc24, nc25, nc03, RD_3[31:17]}), 
		 .B_DOUT({nc26, nc27, nc28, RD_3[16:0]}), 
		.DB_DETECT(DB_DETECT_int[3]), 
        .SB_CORRECT(SB_CORRECT_int[3]), 
		.ACCESS_BUSY( ), 
        .A_ADDR({RADDR[8:0], GND, GND, GND, GND, GND}), 
		.A_BLK_EN({VCC, VCC, VCC}), 
		.A_CLK(CLK), 
		.A_DIN({GND, GND, GND, GND, GND, WD[31:17]}),  
		.A_REN(VCC), 
		.A_WEN({WEN_3, WEN_3}),
        .B_WEN({WEN_3, WEN_3}), 
		.A_DOUT_EN(VCC),
		.A_DOUT_ARST_N(VCC), 
		.A_DOUT_SRST_N(VCC), 
		.B_ADDR({WADDR[8:0], GND, GND, GND, GND, GND}), 
		.B_BLK_EN({WEN_3, VCC, VCC}), 
		.B_CLK(CLK), 
        .B_DIN({GND, GND, GND, WD[16:0]}),  
		.B_REN(VCC), 
		.B_DOUT_EN(VCC), 
		.B_DOUT_ARST_N(VCC), 
        .B_DOUT_SRST_N(VCC), 
		.ECC_EN(ECC_EN[0]), 
		.BUSY_FB(GND), 
		.A_WIDTH({VCC, GND, VCC}), 
		.A_WMODE({GND, GND}),
		.A_BYPASS(VCC), 
        .B_WIDTH({VCC, GND, VCC}), 
		.B_WMODE({GND, GND}),
		.B_BYPASS(VCC), .ECC_BYPASS(VCC));
		
		
    GND GND_power_inst1 (.Y(GND_power_net1));
    VCC VCC_power_inst1 (.Y(VCC_power_net1));
    
endmodule
