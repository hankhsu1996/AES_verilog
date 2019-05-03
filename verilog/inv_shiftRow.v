`include "constant.v"
`timescale 1ns/1ps

module AES_core (
    input          clk   , // Clock
    input          rst_n , // Asynchronous reset active low
    input  [127:0] round_key,
    input  [127:0] block  ,
    output [127:0] new_block
);

    function [127:0] inv_shiftRow(input [127:0] block);
        begin
            inv_shiftRow[8*0+7:8*0] = block[8*12+7:8*12];
            inv_shiftRow[8*1+7:8*1] = block[8*9+7:8*9];
            inv_shiftRow[8*2+7:8*2] = block[8*6+7:8*6];
            inv_shiftRow[8*3+7:8*3] = block[8*3+7:8*3];

            inv_shiftRow[8*4+7:8*4] = block[8*0+7:8*0];
            inv_shiftRow[8*5+7:8*5] = block[8*13+7:8*13];
            inv_shiftRow[8*6+7:8*6] = block[8*10+7:8*10];
            inv_shiftRow[8*7+7:8*7] = block[8*7+7:8*7];

            inv_shiftRow[8*8+7:8*8] = block[8*4+7:8*4];
            inv_shiftRow[8*9+7:8*9] = block[8*1+7:8*1];
            inv_shiftRow[8*10+7:8*10] = block[8*14+7:8*14];
            inv_shiftRow[8*11+7:8*11] = block[8*11+7:8*11];

            inv_shiftRow[8*12+7:8*12] = block[8*8+7:8*8];
            inv_shiftRow[8*13+7:8*13] = block[8*5+7:8*5];
            inv_shiftRow[8*14+7:8*14] = block[8*2+7:8*2];
            inv_shiftRow[8*15+7:8*15] = block[8*15+7:8*15];
        end
    endfunction

    assign new_block = inv_shiftRow(block);

endmodule


