`timescale 1ns / 1ps

module alu_accumulator_tb;
    reg clk;
    reg reset;
    reg enable;
    reg [7:0] data_in;
    reg [2:0] opcode;
    wire [7:0] total_out;

    // Instantiate the accumulator
    alu_accumulator uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .data_in(data_in),
        .opcode(opcode),
        .total_out(total_out)
    );

    // Generate a clock signal that toggles every 5ns
    always #5 clk = ~clk;

    initial begin
        // Initialize all inputs
        clk = 0; 
        reset = 1; // Turn on reset to clear memory
        enable = 0; 
        data_in = 8'h00; 
        opcode = 3'b000; 
        #10; 
        
        reset = 0; // Turn off reset
        enable = 1; // Turn on the register
        
        // Operation 1: Add 5 (Total becomes 5)
        data_in = 8'h05; opcode = 3'b000; #10;
        
        // Operation 2: Add 3 (Total becomes 8)
        data_in = 8'h03; opcode = 3'b000; #10;
        
        // Operation 3: Subtract 2 (Total becomes 6)
        data_in = 8'h02; opcode = 3'b001; #10;
        
        $finish;
    end
endmodule