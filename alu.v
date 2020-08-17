`timescale 1ns / 1ps

module alu(
input [7:0] A,B,  // ALU 8-bit Inputs                 
           input [2:0] Sel,// ALU Selection
           output [7:0] Result, // ALU 8-bit Output
           output CarryOut // Carry Out Flag
    );
    reg [7:0] out;
    wire [8:0] tmp;
    assign Result = out; // ALU out
    assign tmp = {1'b0,A} + {1'b0,B};
    assign CarryOut = tmp[8]; // Carryout flag
    always @(*)
    begin
        case(Sel)
         4'b0000: // Addition
           out = A + B ; 
         4'b0001: // Subtraction
           out = A - B ;
         4'b0010: // Multiplication
           out = A * B;
         4'b0011: // And
           out = A & B;
         4'b0100: // Or
           out = A | B;
         4'b0101: // Not
           out = ~A;
         4'b0110: // Ex-Or
           out = A ^ B;
         4'b0111: // Ex-Nor
           out = ~(A ^ B);
         default: out = A + B ; 
        endcase
    end
endmodule
