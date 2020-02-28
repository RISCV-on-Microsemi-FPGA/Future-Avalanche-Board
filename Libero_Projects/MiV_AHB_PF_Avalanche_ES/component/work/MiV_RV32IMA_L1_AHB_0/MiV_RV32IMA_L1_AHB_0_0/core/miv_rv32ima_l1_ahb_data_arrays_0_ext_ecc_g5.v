// Copyright (c) 2017, Microsemi Corporation
// All rights reserved.
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are met:
//     * Redistributions of source code must retain the above copyright
//       notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above copyright
//       notice, this list of conditions and the following disclaimer in the
//       documentation and/or other materials provided with the distribution.
//     * Neither the name of the <organization> nor the
//       names of its contributors may be used to endorse or promote products
//       derived from this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
// ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
// WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED. IN NO EVENT SHALL MICROSEMI CORPORATIONM BE LIABLE FOR ANY
// DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
// (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
// LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
// SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
//
// APACHE LICENSE
// Copyright (c) 2017, Microsemi Corporation 
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//
// SVN Revision Information:
// SVN $Revision: $
// SVN $Date: $
//
// Resolved SARs
// SAR      Date     Who   Description
//
// Notes:
//
// ****************************************************************************/
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
module MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_MIV_RV32IMA_L1_AHB_DATA_ARRAYS_0_EXT(
  input RW0_clk,
  input [10:0] RW0_addr,
  input RW0_en,
  input RW0_wmode,
  input [3:0] RW0_wmask,
  input [31:0] RW0_wdata,
  output [31:0] RW0_rdata,
  output sb_correct,
  output db_detect,
  input  reset_flag
);

parameter ECC_EN = 1;
////////////////////////////////////////////////////////////////////////////////
// Internal signals
////////////////////////////////////////////////////////////////////////////////
wire            wrEnByteLane0;
wire            wrEnByteLane1;
wire            wrEnByteLane2;
wire            wrEnByteLane3;
wire [31:0]      rdDataByteLane0;
wire [31:0]      rdDataByteLane1;
wire [31:0]      rdDataByteLane2;
wire [31:0]      rdDataByteLane3;

wire            sb_correct_ram7d0;
wire            sb_correct_ram15d8;
wire            sb_correct_ram24d16;
wire            sb_correct_ram31d25;
wire            db_detect_ram7d0;
wire            db_detect_ram15d8;
wire            db_detect_ram24d16;
wire            db_detect_ram31d25;

wire [10:0]     read_address;
wire [10:0]     write_address;

reg [10:0]     last_read_address;//#
reg [10:0]     last_write_address;//#

reg flag_check;

assign sb_correct = flag_check ?  (sb_correct_ram7d0 || sb_correct_ram15d8 || sb_correct_ram24d16 || sb_correct_ram31d25) : 1'b0;
assign db_detect  = flag_check ?  (db_detect_ram7d0 || db_detect_ram15d8 || db_detect_ram24d16 || db_detect_ram31d25) : 1'b0;

assign write_address = (RW0_wmode & RW0_en) ? RW0_addr : last_write_address;//#
assign read_address  = (!RW0_wmode & RW0_en) ? RW0_addr : last_read_address;//#


assign wrEnByteLane0 = RW0_wmode & RW0_en & RW0_wmask[0];
assign wrEnByteLane1 =  RW0_wmode& RW0_en & RW0_wmask[1];
assign wrEnByteLane2 =  RW0_wmode& RW0_en & RW0_wmask[2];
assign wrEnByteLane3 =  RW0_wmode & RW0_en & RW0_wmask[3];


assign RW0_rdata[31:0] = {rdDataByteLane3[7:0], rdDataByteLane2[7:0],
                          rdDataByteLane1[7:0], rdDataByteLane0[7:0]
                         };

always @(posedge RW0_clk)
  begin
    if (reset_flag)
        begin
            flag_check <= 1'b0;
        end
    else
        begin
            flag_check <= !RW0_wmode & RW0_en; //#
			last_write_address <= RW0_addr;//#
			last_read_address <= RW0_addr;//#
        end
  end

MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_2048x32_ECC #(
    .ECC_EN(ECC_EN)
    ) ram7d0 (
       .WD({24'b0, RW0_wdata[7:0]}),
       .RD(rdDataByteLane0),
       .WADDR(write_address),
       .RADDR(read_address ),
       .WEN(wrEnByteLane0),
       .CLK(RW0_clk),
       .SB_CORRECT(sb_correct_ram7d0),
       .DB_DETECT(db_detect_ram7d0)
    );
MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_2048x32_ECC #(
    .ECC_EN(ECC_EN)
    ) ram15d8(
       .WD({24'b0, RW0_wdata[15:8]}),
       .RD(rdDataByteLane1),
       .WADDR(write_address),
       .RADDR(read_address ),
       .WEN(wrEnByteLane1),
       .CLK(RW0_clk),
       .SB_CORRECT(sb_correct_ram15d8),
       .DB_DETECT(db_detect_ram15d8)
    );

MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_2048x32_ECC #(
    .ECC_EN(ECC_EN)
    ) ram24d16(
       .WD({24'b0, RW0_wdata[23:16]}),
       .RD(rdDataByteLane2),
       .WADDR(write_address),
       .RADDR(read_address ),
       .WEN(wrEnByteLane2),
       .CLK(RW0_clk),
       .SB_CORRECT(sb_correct_ram24d16),
       .DB_DETECT(db_detect_ram24d16)
    );

MiV_RV32IMA_L1_AHB_0_MiV_RV32IMA_L1_AHB_0_0_RAM_2048x32_ECC #(
    .ECC_EN(ECC_EN)
    ) ram31d24(
       .WD({24'b0, RW0_wdata[31:24]}),
       .RD(rdDataByteLane3),
       .WADDR(write_address),
       .RADDR(read_address),
       .WEN(wrEnByteLane3),
       .CLK(RW0_clk),
       .SB_CORRECT(sb_correct_ram31d25),
       .DB_DETECT(db_detect_ram31d25)
    );


endmodule 

