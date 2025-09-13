# Mini 8-bit CPU in Verilog

A small, fully functional **8-bit CPU** implemented in **Verilog HDL**, designed for learning and demonstration purposes.  
Includes basic components such as Program Counter, Instruction Memory, Control Unit, Register File, ALU, Data Memory, and a top-level CPU module with a testbench.

---

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

## Directory Structure

