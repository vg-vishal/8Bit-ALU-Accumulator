<div align="center">
  <img src="https://readme-typing-svg.herokuapp.com?font=Fira+Code&weight=600&size=30&pause=1000&color=2EA043&center=true&vCenter=true&width=600&lines=8-Bit+ALU+%26+Accumulator+System;Custom+IP+Core+Integration;Designed+in+Xilinx+Vivado" alt="Typing SVG" />
</div>

<div align="center">
  <img src="https://img.shields.io/badge/Language-Verilog_RTL-00599C?style=for-the-badge&logo=c&logoColor=white" alt="Verilog" />
  <img src="https://img.shields.io/badge/Software-Xilinx_Vivado-E32028?style=for-the-badge&logo=amd&logoColor=white" alt="Vivado" />
  <img src="https://img.shields.io/badge/Architecture-Accumulator-FFB900?style=for-the-badge&logo=data-bricks&logoColor=black" alt="Architecture" />
</div>

<br>

> A system-level demonstration of Vivado IP packaging, transforming a custom combinational 8-bit Arithmetic Logic Unit (ALU) into a functional sequential accumulator using a clocked memory register.

---

## ⚡ System Architecture

By integrating combinational math logic with sequential memory, this design mimics the fundamental datapath of a computer processor.

| Component | Type | Description |
| :--- | :--- | :--- |
| 🧠 **8-Bit ALU** | Combinational IP | Custom packaged Xilinx IP core (`.xci`) executing arithmetic and logic operations. |
| 💾 **Memory Register** | Sequential Block | `RTL_REG_ASYNC` flip-flops triggered by a clock signal and regulated by a Clock Enable (CE) pin. |
| 🔄 **Feedback Loop** | Physical Routing | The memory's `Q` output loops directly back into the ALU's `A` input to continually compute a running total. |

<div align="center">
  <h3>🛠️ RTL Schematic</h3>
  <img src="https://github.com/vg-vishal/8Bit-ALU-Accumulator/blob/main/schematic.png" alt="RTL Schematic" width="700" />
</div>

---

## 📈 Simulation & Verification

The system was verified via behavioral simulation. The waveform below proves the accumulator dynamically holds and updates its running total at every positive clock edge based on the incoming sequential operations.

<div align="center">
  <h3>⏱️ Timing Waveform</h3>
  <img src="https://github.com/vg-vishal/8Bit-ALU-Accumulator/blob/main/Wave%20Form%20output.png" alt="Simulation Waveform" width="700" />
</div>

---

## 🚀 How to Run
1. Clone this repository and open Xilinx Vivado.
2. Add the Verilog files (`.v`) to your Design and Simulation Sources.
3. Import the packaged IP repository and load the `alu_8bit_0.xci` core.
4. Run the Behavioral Simulation on `alu_accumulator_tb.v`.

---

<div align="center">
  <b>[VISHAL GEDELA]</b><br>
  B.Tech Candidate | SRM Institute of Science and Technology | Class of 2028
</div>
