# 📘 MIPS Assembly Practice

This repository contains a collection of small MIPS assembly programs written and tested in [MARS](https://computerscience.missouristate.edu/mars-mips-simulator.htm.)

Each program demonstrates a fundamental concept of the MIPS instruction set: registers, memory, syscalls, arithmetic, branching, procedures, stack usage, and more.

The goal of this repo is to:
1. Serve as a study resource for exams/quizes in college.
2. Act as a reference for learning low-level programming

## 🚀 How to Run
1. Install [MARS MIPS Simulator](https://computerscience.missouristate.edu/mars-mips-simulator.htm.)
2. Clone this repo:
```
git clone https://github.com/VladAnton22/mips-exercises.git
cd mips-exercises
```
3. Make sure you have java installed and use `java -jar Mars4_5.jar` to open MARS
4. Open the .asm file in MARS
5. Assemble (F3) and Run (F5)

## 📑 Program Descriptions

### 1.Arithmetic (arithmetic.asm)
* Demonstrates use of `$t` registers.
* Performs addition, subtraction, multiplication, division.
* Prints results via syscall.

### 2.Memory (memory.asm)
* Declares `.word` values in `data`.
* Loads them with lw, stores result with `sw`.
* Shows memory addressing basics.

## ✨ Future Additions
* Branching
* Loops
* Logical Operations
* Strings
* Procedures
