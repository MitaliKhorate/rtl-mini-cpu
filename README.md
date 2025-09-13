# Mini 8-bit CPU in Verilog

A small, fully functional **8-bit CPU** implemented in **Verilog HDL**, designed for learning and demonstration purposes.  
Includes basic components such as Program Counter, Instruction Memory, Control Unit, Register File, ALU, Data Memory, and a top-level CPU module with a testbench.

---
## 🔗 Quick Access
- [ALU Code (alu.v)](alu.v)
- [Testbench (alu_tb.v)](alu_tb.v)
## 📂 Project Files
| File | Description |
|------|-------------|
| ## 🔗 Quick Access
- [ Code (pc.v)](pc.v)`---| Program Counter module |
| `instruction_mem.v` | Instruction Memory module |
| `control_unit.v` | Control Unit (Instruction Decoder) |
| `register_file.v` | Register File with 4 general-purpose registers |
| `alu.v` | Arithmetic Logic Unit supporting addition & subtraction |
| `data_mem.v` | Data Memory module with combinational read |
| `cpu_top.v` | Top-level CPU module connecting all submodules |
| `tb_cpu.v` | Testbench for the CPU generating `cpu.vcd` waveform |
| `README.md` | Project description and instructions |

## Features

- **8-bit Program Counter (PC)**  
- **Instruction Memory (IM)** with sample program  
- **Control Unit (CU)** for instruction decoding  
- **Register File (RF)** with 4 general-purpose registers  
- **Arithmetic Logic Unit (ALU)** supporting addition and subtraction  
- **Data Memory (DM)** with combinational read for immediate waveform visibility  
- **Top-level CPU module** connecting all submodules  
- **Testbench (`tb_cpu.v`)** generating waveform (`cpu.vcd`) for GTKWave visualization

---


