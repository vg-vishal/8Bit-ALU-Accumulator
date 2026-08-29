# 8-Bit ALU & Accumulator System in Vivado

This repository contains the Verilog RTL design, IP packaging, and system-level integration of a custom 8-bit Arithmetic Logic Unit (ALU) into a sequential accumulator architecture using Xilinx Vivado.

## Project Overview
* **Custom IP Creation:** Designed and packaged a combinational 8-bit ALU supporting basic arithmetic and logic operations.
* **IP Reusability:** Exported the ALU as a standalone Xilinx IP core (`.xci`).
* **System Integration:** Instantiated the ALU IP inside a top-level hardware wrapper (`alu_accumulator.v`).
* **Sequential Logic:** Implemented a clock-driven memory register (Flip-Flops) with a Clock Enable (CE) pin to create a feedback loop, effectively turning the combinational ALU into an accumulator that maintains a running total.

## Architecture Diagram
* **Core Logic:** 8-bit ALU (Combinational block)
* **Memory:** RTL_REG_ASYNC (Sequential Flip-Flop Register)
* **Feedback Loop:** The output `Q` of the memory register routes back into Input `A` of the ALU to execute running calculations on sequential clock pulses.

![RTL Schematic](https://github.com/vg-vishal/8Bit-ALU-Accumulator/blob/main/schematic.png)

## Simulation & Verification
The design is verified via behavioral simulation. The testbench (`alu_accumulator_tb.v`) proves the system accurately updates the running total on the rising edge of the clock signal based on sequential input operations.

![Simulation Waveform](https://github.com/vg-vishal/8Bit-ALU-Accumulator/blob/main/Wave%20Form%20output.png)

## Author
**[VISHAL GEDELA]**
B.Tech Candidate, Class of 2028
