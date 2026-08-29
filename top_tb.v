`timescale 1ns / 1ps

module top_tb;
    reg [7:0] A;
    reg [7:0] B;
    reg [2:0] S;
    wire [7:0] Result;
    wire Carry;
    wire Zero;

    // Instantiate the top module
    top uut (
        .A(A),
        .B(B),
        .S(S),
        .Result(Result),
        .Carry(Carry),
        .Zero(Zero)
    );

    initial begin
        // Test 1: Addition 15 + 1 = 16
        A = 8'h0F; B = 8'h01; S = 3'b000; #10;
        // Test 2: Addition with carry
        A = 8'hFF; B = 8'h01; S = 3'b000; #10;
        // Test 3: Subtraction 5 - 3 = 2
        A = 8'h05; B = 8'h03; S = 3'b001; #10;
        // Test 4: AND
        A = 8'hAA; B = 8'h55; S = 3'b010; #10;
        // Test 5: OR
        A = 8'hAA; B = 8'h55; S = 3'b011; #10;
        // Test 6: XOR
        A = 8'hAA; B = 8'h55; S = 3'b100; #10;
        // Test 7: NOT A
        A = 8'h0F; B = 8'h00; S = 3'b101; #10;
        // Test 8: Zero result
        A = 8'h00; B = 8'h00; S = 3'b010; #10;
        
        $finish;
    end
endmodule