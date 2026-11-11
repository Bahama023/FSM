
<h1 align="center">Finite State Machine (FSM)</h1>

<p align="center">
  A simple Finite State Machine implementation using Verilog HDL.
</p>

<p align="center">
  <img src="https://img.shields.io/badge/Language-Verilog-blue">
  <img src="https://img.shields.io/badge/Design-Digital%20Logic-orange">
</p>

## Overview

This project implements a four-state Finite State Machine (FSM) using Verilog HDL. It demonstrates sequential logic, state transitions, clock synchronization, and reset functionality.

## State Diagram

```text
       IDLE
         |
         v
        S1
         |
         v
        S2
         |
         v
        S3
         |
         └──────> S1
```

## State Encoding

| State | Encoding |
|-------|----------|
| IDLE  | 00       |
| S1    | 01       |
| S2    | 10       |
| S3    | 11       |

## Project Structure

```text
FSM/
├── docs/
├── state_machine.v
├── state_machine_tb.v
└── README.md
```

## Design Details

- **Language:** Verilog HDL
- **Architecture:** Finite State Machine
- **Number of States:** 4
- **State Encoding:** 2-bit Binary
- **Clock:** Positive-edge triggered
- **Reset:** Synchronous, Active High

## Simulation

This project can be simulated using Icarus Verilog.

### 1. Clone the Repository

```bash
git clone https://github.com/Bahama023/FSM.git
cd FSM
```

### 2. Compile the Design

```bash
iverilog -o fsm_sim state_machine.v state_machine_tb.v
```

### 3. Run Simulation

```bash
vvp fsm_sim
```

## Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave (for waveform visualization)

## Future Improvements

- Improve state transition logic.
- Implement counter functionality.
- Add comprehensive testbench verification.
- Perform FPGA implementation.

[GitHub Profile](https://github.com/Bahama023)


