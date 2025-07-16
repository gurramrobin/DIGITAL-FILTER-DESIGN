# DIGITAL-FILTER-DESIGN

COMPANY: CODTECH IT SOLUTIONS
NAME: GURRAM ROBIN
INTERN ID:CT06DF2485
DOMAIN:VLSI
DURATION: 6 WEEKS
MENTOR: NEELA SANTHOSH

# 🎧 FIR Filter (Finite Impulse Response)

This project implements a 4-tap FIR (Finite Impulse Response) digital filter using Verilog. FIR filters are used in digital signal processing to remove noise, shape signals, and perform frequency-selective filtering. The design uses hardcoded coefficients `[1, 2, 3, 4]` and supports signed 8-bit input and 16-bit output.

The FIR filter performs convolution between the input signal and the coefficients using a shift-register structure and multiply-accumulate logic. It is clock-driven and synchronous, making it suitable for FPGA implementation.

📁 Files Included

- `fir_filter.v` – FIR filter Verilog module  
- `fir_filter_tb.v` – Testbench with impulse input  

⚙️ How It Works

The output `y[n]` is computed as:
y[n] = h[0]*x[n] + h[1]*x[n-1] + h[2]*x[n-2] + h[3]*x[n-3]

🧪 Simulation Tools

- ModelSim / Vivado / Icarus Verilog  
- View waveform using GTKWave or built-in viewers

✅ Output Example

<img width="1366" height="768" alt="Image" src="https://github.com/user-attachments/assets/1dd15f79-d1d2-4d76-a6df-e2493a431e98" />
