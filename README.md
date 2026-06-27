# RTL-to-GDSII Implementation of AES Encryption Core using LibreLane

## Overview

This project demonstrates the complete **RTL-to-GDSII ASIC physical design flow** of an **Advanced Encryption Standard (AES)** encryption core using the **LibreLane** open-source ASIC flow and the **Sky130A Process Design Kit (PDK)**.

Starting from a Verilog RTL description, the design is taken through the entire digital ASIC implementation flow including synthesis, floorplanning, placement, clock tree synthesis, routing, timing verification, physical verification, and final GDSII generation.

The objective of this project is to gain hands-on experience with the complete open-source ASIC design flow while producing a manufacturable GDSII layout.

---

## About AES

The **Advanced Encryption Standard (AES)** is a symmetric-key block cipher widely used for secure data encryption.

### Key Features

- 128-bit data block size
- Supports **128-bit, 192-bit, and 256-bit** encryption keys
- Multiple rounds of secure cryptographic transformations

### Major Operations

- AddRoundKey
- SubBytes
- ShiftRows
- MixColumns
- Key Expansion

These operations are repeated over multiple rounds to provide strong cryptographic security.

---

# RTL-to-GDSII Design Flow

```text
           Verilog RTL
                │
                ▼
        Logic Synthesis
                │
                ▼
         Floorplanning
                │
                ▼
 Power Distribution Network
                │
                ▼
           Placement
                │
                ▼
    Clock Tree Synthesis
                │
                ▼
        Global Routing
                │
                ▼
       Detailed Routing
                │
                ▼
  Static Timing Analysis
                │
                ▼
     Design Rule Check
                │
                ▼
 Layout Versus Schematic
                │
                ▼
      GDSII Generation
```

---

# Tools Used

| Tool | Purpose |
|------|---------|
| LibreLane | Complete RTL-to-GDSII Flow |
| OpenROAD | Physical Design |
| Yosys | Logic Synthesis |
| Magic | Layout Visualization & DRC |
| KLayout | GDSII Viewer |
| Netgen | LVS Verification |
| Sky130A PDK | 130 nm Open-Source Technology |
| Verilog HDL | RTL Design |

---

# Technology

| Parameter | Value |
|-----------|-------|
| Technology Node | Sky130A (130 nm) |
| Design Style | Standard Cell ASIC |
| Design Flow | LibreLane |
| Input | Verilog RTL |
| Output | Verified GDSII Layout |

---

# Project Results

✔ RTL successfully synthesized

✔ Floorplan generated

✔ Placement completed

✔ Clock Tree Synthesis completed

✔ Global and Detailed Routing completed

✔ Static Timing Analysis performed

✔ DRC verification completed

✔ LVS verification completed

✔ Final GDSII layout generated

---

# Repository Structure

```text
.
├── src/
├── config.json
├── reports/
├── logs/
├── runs/
├── screenshots/
├── docs/
└── README.md
```

---

# Learning Outcomes

This project provided practical exposure to:

- Open-source ASIC design flow
- RTL-to-GDSII implementation
- Physical design using LibreLane
- Floorplanning and Placement
- Clock Tree Synthesis (CTS)
- Routing and Timing Analysis
- Physical Verification (DRC & LVS)
- GDSII layout generation using the Sky130A PDK

---

# Conclusion

This project demonstrates the successful implementation of an **AES encryption core** through the complete open-source ASIC physical design flow. Beginning with a Verilog RTL description and ending with a verified GDSII layout, it showcases the end-to-end digital ASIC implementation process using the LibreLane ecosystem and the Sky130A PDK.
