# FSM

<h1 align="center">FSM – Finite State Machine in Verilog</h1>

<p align="center">
  <img src="https://img.shields.io/badge/Language-Verilog-blue" />
  <img src="https://img.shields.io/badge/Domain-Digital%20Design-orange" />
  <img src="https://img.shields.io/badge/Project-FSM-green" />
</p>

<h2>📌 Overview</h2>

<p>
  This project implements a <strong>Finite State Machine (FSM)</strong>
  using Verilog HDL. It demonstrates state-based sequential logic,
  clock-driven transitions, reset functionality, and output decoding.
</p>

<p>
  The FSM consists of four states: IDLE, S1, S2, and S3.
  State transitions are synchronized with the clock signal.
</p>

<h2>🔄 State Transition Diagram</h2>

<pre>
       ┌─────────┐
       │  IDLE   │
       └────┬────┘
            │
            ▼
       ┌─────────┐
       │   S1    │◄──────────────┐
       └────┬────┘               │
            │                    │
            ▼                    │
       ┌─────────┐               │
       │   S2    │               │
       └────┬────┘               │
            │                    │
            ▼                    │
       ┌─────────┐               │
       │   S3    │───────────────┘
       └─────────┘

       Transition sequence:
       IDLE → S1 → S2 → S3 → S1 ...
</pre>

<h2>⚙️ Design Specifications</h2>

<table>
  <tr>
    <th>Parameter</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>HDL</td>
    <td>Verilog</td>
  </tr>
  <tr>
    <td>Design Type</td>
    <td>Finite State Machine</td>
  </tr>
  <tr>
    <td>Number of States</td>
    <td>4</td>
  </tr>
  <tr>
    <td>State Encoding</td>
    <td>2-bit Binary</td>
  </tr>
  <tr>
    <td>Clock</td>
    <td>Positive-edge triggered</td>
  </tr>
  <tr>
    <td>Reset</td>
    <td>Synchronous, Active High</td>
  </tr>
  <tr>
    <td>Transition Duration</td>
    <td>10 Clock Cycles (Intended)</td>
  </tr>
</table>

<h3>State Encoding</h3>

<table>
  <tr>
    <th>State</th>
    <th>Binary Encoding</th>
  </tr>
  <tr><td>IDLE</td><td><code>00</code></td></tr>
  <tr><td>S1</td><td><code>01</code></td></tr>
  <tr><td>S2</td><td><code>10</code></td></tr>
  <tr><td>S3</td><td><code>11</code></td></tr>
</table>

<h2>📂 Project Structure</h2>

<pre>
FSM/
│
├── docs/
│   └── Documentation files
│
├── state_machine.v
│   └── Main FSM implementation
│
├── state_machine_tb.v
│   └── FSM testbench
│
└── README.md
</pre>

<h2>🧩 Module Description</h2>

<h3>1. state_machine.v</h3>

<p>The main Verilog module implements the FSM.</p>

<strong>Inputs:</strong>
<ul>
  <li><code>clk</code> – Clock input</li>
  <li><code>rst</code> – Active-high synchronous reset</li>
</ul>

<strong>Outputs:</strong>
<ul>
  <li><code>sIDLE</code> – Indicates IDLE state</li>
  <li><code>s1</code> – Indicates state S1</li>
  <li><code>s2</code> – Indicates state S2</li>
  <li><code>s3</code> – Indicates state S3</li>
</ul>

<p>The implementation uses:</p>
<ul>
  <li>Current and next-state registers</li>
  <li>Binary state encoding</li>
  <li>Sequential logic for state storage</li>
  <li>Combinational logic for next-state selection</li>
  <li>Output decoding based on the current state</li>
</ul>

<h3>2. state_machine_tb.v</h3>

<p>The testbench provides a basic simulation environment with:</p>
<ul>
  <li>Periodic clock generation</li>
  <li>Initial reset condition</li>
  <li>Reset deactivation after the initial simulation interval</li>
</ul>

<h2>🚀 Getting Started</h2>

<h3>Prerequisites</h3>

<p>Install any of the following Verilog simulation tools:</p>

<ul>
  <li><a href="https://steveicarus.github.io/iverilog/">Icarus Verilog</a></li>
  <li><a href="https://www.intel.com/content/www/us/en/software/programmable/quartus-prime/model-sim.html">ModelSim</a></li>
  <li><a href="https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html">Xilinx Vivado</a></li>
</ul>

<h3>Clone the Repository</h3>

<pre><code>git clone https://github.com/Bahama023/FSM.git
cd FSM</code></pre>

<h3>Compile Using Icarus Verilog</h3>

<pre><code>iverilog -o fsm_sim state_machine.v state_machine_tb.v</code></pre>

<h3>Run Simulation</h3>

<pre><code>vvp fsm_sim</code></pre>

<h3>View Waveforms</h3>

<p>Add <code>$dumpfile</code> and <code>$dumpvars</code> to your testbench to generate a waveform file.</p>

<pre><code>gtkwave waveform.vcd</code></pre>

<h2>🧠 Concepts Demonstrated</h2>

<ul>
  <li>Finite State Machine Design</li>
  <li>Verilog HDL Programming</li>
  <li>Sequential and Combinational Logic</li>
  <li>Binary State Encoding</li>
  <li>Synchronous Reset</li>
  <li>Clock-driven State Transitions</li>
  <li>RTL Simulation and Verification</li>
</ul>

<h2>⚠️ Implementation Notes</h2>

<p>The current RTL is an initial FSM implementation. The following improvements are recommended:</p>

<ul>
  <li>Implement counter increment and reset logic.</li>
  <li>Provide default assignments in combinational logic to avoid unintended latch inference.</li>
  <li>Correct the <code>sDILE</code>/<code>sIDLE</code> signal-name mismatch in the testbench.</li>
  <li>Add checks to verify the expected state sequence.</li>
</ul>

<p>
  The intended 10-cycle transition behavior should be verified
  after these improvements.
</p>

<h2>🔮 Future Improvements</h2>

<ul>
  <li>Implement a complete transition counter.</li>
  <li>Add self-checking testbench functionality.</li>
  <li>Generate waveform-based verification.</li>
  <li>Add parameterized transition timing.</li>
  <li>Explore alternative state encodings such as one-hot encoding.</li>
  <li>Perform FPGA synthesis and hardware testing.</li>
</ul>

<h2>👨‍💻 Author</h2>

<p>
  <strong>Bahama023</strong><br>
  GitHub:
  <a href="https://github.com/Bahama023">@Bahama023</a>
</p>

<h2>📜 License</h2>

<p>
  This project is available for educational and learning purposes.
  Add a LICENSE file to specify permissions for reuse and distribution.
</p>

<hr>

<p align="center">
  ⭐ If you find this project useful, consider giving it a star!
</p>
