# Physical_Design_AES
AES RTL-to-GDSII Physical Design using LibreLane
Overview
This project demonstrates the complete RTL-to-GDSII ASIC physical design flow of the Advanced Encryption Standard (AES) encryption engine using the open-source LibreLane flow. The design was synthesized, placed, routed, verified, and converted into a manufacturable GDSII layout using the Sky130A Process Design Kit (PDK).
The
 objective of this project is to showcase the complete digital ASIC 
implementation flow starting from Verilog RTL and ending with a verified
 GDSII layout suitable for fabrication.

About AES
The Advanced Encryption Standard (AES) is a symmetric-key block cipher widely used for secure data encryption. It operates on 128-bit data blocks and supports key lengths of 128, 192, and 256 bits.
AES consists of several transformation stages:
AddRoundKey
SubBytes
ShiftRows
MixColumns
Key Expansion
These operations are repeated across multiple rounds to provide strong cryptographic security.

RTL-to-GDSII Design Flow
The physical implementation of the AES design follows the complete ASIC design flow:
RTL Design
    ↓
Logic Synthesis
    ↓
Floorplanning
    ↓
Power Distribution Network (PDN)
    ↓
Placement
    ↓
Clock Tree Synthesis (CTS)
    ↓
Global Routing
    ↓
Detailed Routing
    ↓
Static Timing Analysis (STA)
    ↓
Design Rule Check (DRC)
    ↓
Layout Versus Schematic (LVS)
    ↓
GDSII Generation

Tools Used
LibreLane
OpenROAD
Yosys
Magic
KLayout
Netgen
Sky130A PDK
Verilog HDL

Repository Structure
AES-RTL-to-GDSII/
│
├── src/                 # Verilog RTL source files
├── outputs/             # Generated GDSII, DEF, LEF, MAG and metrics
├── images/              # Routing and final layout images
├── config.json          # LibreLane configuration
└── README.md

Results
The complete RTL-to-GDSII flow was successfully executed using LibreLane.
Generated outputs include:
GDSII Layout
DEF
LEF
Magic Layout
SPEF
SDF
Timing Reports
DRC Reports
LVS Reports

Project Images
Detailed Routing
(Insert routing screenshot here)
Final GDSII Layout
(Insert final_layout.png here)

Technology
Technology Node: Sky130A (130 nm)
Design Style: Standard Cell ASIC
Physical Design Flow: LibreLane

Author
Aniruddhan Srikanth
Electronics and Computer Engineering (ECM)
VIT Chennai

This
 project demonstrates the successful implementation of an AES encryption
 core through the complete open-source ASIC physical design flow, from 
RTL description to verified GDSII layout.
