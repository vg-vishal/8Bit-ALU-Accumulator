# ⚡ 8-Bit ALU & Accumulator System — Vivado

> **A reusable 8-bit ALU IP core integrated into a sequential accumulator architecture using Verilog and Xilinx Vivado.**

This project demonstrates the complete flow of designing a custom **8-bit Arithmetic Logic Unit (ALU)**, packaging it as a reusable **Vivado IP core**, and integrating that IP into a clock-driven **Accumulator System**.

The project focuses on **RTL design, IP packaging, IP reuse, combinational logic, sequential logic, and hardware system integration**.

---

## 🚀 Project Highlights

- 🧮 Designed a custom **8-bit ALU** using Verilog HDL
- 📦 Packaged the ALU as a **reusable Vivado IP Core**
- 🔄 Imported and reused the custom IP in a separate Vivado project
- 🧠 Integrated the ALU with a sequential accumulator architecture
- ⏱️ Implemented clock-driven state updates using flip-flops
- 🔁 Created a feedback path from the accumulator output back to the ALU
- 🧪 Verified the complete system using behavioral simulation
- 🛠️ Designed and tested using **Xilinx Vivado**

---

## 🏗️ System Architecture

The system consists of two major parts:

### 1. 8-Bit ALU — Combinational Logic

The custom ALU performs arithmetic and logical operations based on the 3-bit select input.

```text
        A[7:0] ───────────────┐
                              │
                              ▼
                       ┌─────────────┐
        B[7:0] ───────►│             │
                       │  8-BIT ALU  │──────► Result[7:0]
        S[2:0] ───────►│             │
                       └──────┬──────┘
                              │
                         Carry / Zero
