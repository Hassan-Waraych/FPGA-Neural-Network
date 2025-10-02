# FPGA Perceptron Layer (Zybo Z7)

This project implements a **3-neuron perceptron layer in FPGA hardware** using Verilog on a Zynq Zybo Z7 development board. Each neuron applies a weighted sum and threshold activation to binary inputs provided by board switches. Outputs are mapped to LEDs, allowing real-time visualization of neural activations.

## 🎯 Project Overview
- **Neuron 1 (OR):** Fires if either input is 1
- **Neuron 2 (AND):** Fires only if both inputs are 1
- **Neuron 3 (X0 AND NOT X1):** Fires when `x0=1` and `x1=0`

This setup demonstrates how varying **weights** and **biases** within the same perceptron structure can yield distinct decision boundaries — the foundational idea of neural networks.

## 📊 Truth Tables
See below for expected outputs (inputs: `x1, x0`):

| x1 | x0 | OR | AND | X0 AND NOT X1 |  
|----|----|----|-----|----------------|
| 0  | 0  | 0  | 0   | 0              |
| 0  | 1  | 1  | 0   | 1              |
| 1  | 0  | 1  | 0   | 0              |
| 1  | 1  | 1  | 1   | 0              |

![IMG_0210](https://github.com/user-attachments/assets/4549eba9-ab28-4510-b3ee-600d55ececfc)


## 🛠️ Tech Stack
- **HDL:** Verilog
- **Tools:** Xilinx Vivado & Vitis, Block Design for PS FCLK0 integration
- **Board:** Digilent Zybo Z7 (Zynq-7000 SoC)

## 📷 Suggested Media

**Block Diagram**

<img width="1335" height="439" alt="Screenshot 2025-10-02 164501" src="https://github.com/user-attachments/assets/4dd42024-b709-4819-8616-e06fe9486f99" />

**Weights/Biases**

<img width="407" height="512" alt="Screenshot 2025-10-02 164533" src="https://github.com/user-attachments/assets/99a403a9-2253-49ec-9e2d-1e8b55b259cc" />

**Schematic**

<img width="1374" height="644" alt="Screenshot 2025-10-02 164719" src="https://github.com/user-attachments/assets/9f906198-a4d8-4318-bdc3-61fd8cfb76aa" />

**Simulation**

<img width="2395" height="516" alt="Screenshot 2025-10-02 164856" src="https://github.com/user-attachments/assets/b112f650-e441-4d09-98d0-6a4ff4632d79" />

**Board Photos**

<img width="2048" height="1536" alt="3" src="https://github.com/user-attachments/assets/a53064f6-28cc-4def-9f34-ca988f84f58f" />
<img width="2048" height="1536" alt="2" src="https://github.com/user-attachments/assets/3cf19fec-7fb3-4814-90e2-a6238ba074ca" />
<img width="2048" height="1536" alt="1" src="https://github.com/user-attachments/assets/6a296efc-4779-4186-8409-f934568a27bd" />


## 🚀 Roadmap
- **Phase 1 (✅ done):** 3 perceptrons in parallel, mapped to LEDs
- **Phase 2 (WIP):** Add a hidden layer and store weights in BRAM
- **Phase 3:** Package perceptron layer as AXI-Lite IP, controlled by PS software
- **Phase 4:** Extend to small MLP with VGA visualization
