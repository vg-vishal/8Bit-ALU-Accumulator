`timescale 1ns / 1ps

module alu_accumulator (
    input wire clk,
    input wire reset,
    input wire enable,
    input wire [7:0] data_in,   // Connects to B
    input wire [2:0] opcode,    // Connects to S
    output wire [7:0] total_out // The running total
);

    reg [7:0] acc_reg;
    wire [7:0] alu_result;
    wire alu_carry;
    wire alu_zero;

    // Instantiate your custom IP
    alu_8bit_0 my_ip (
        .A(acc_reg),      // Input A is fed by the register
        .B(data_in),      // Input B comes from outside
        .S(opcode),
        .Result(alu_result),
        .Carry(alu_carry),
        .Zero(alu_zero)
    );

    // Sequential logic: Update the register on the clock pulse
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            acc_reg <= 8'h00;
        end else if (enable) begin
            acc_reg <= alu_result;
        end
    end

    assign total_out = acc_reg;

endmodule