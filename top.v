`timescale 1ns / 1ps

module top(
    input [7:0] A,
    input [7:0] B,
    input [2:0] S,
    output [7:0] Result,
    output Carry,
    output Zero
);

    // Calling your packaged IP inside this new design
    alu_8bit_0 my_ip (
        .A(A),
        .B(B),
        .S(S),
        .Result(Result),
        .Carry(Carry),
        .Zero(Zero)
    );

endmodule