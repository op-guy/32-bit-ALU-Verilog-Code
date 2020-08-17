`timescale 1ns / 1ps 

module tb_alu();
    reg[7:0] A, B;
    reg[2:0] Sel;
    wire[7:0] Result;
    wire CarryOut;
    alu test_unit(A,B,Sel,Result,CarryOut);
    initial begin
    A = 8'b00000100;
    B = 8'b00000101;
    Sel = 3'b110;
    end 
endmodule
