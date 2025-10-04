# 📘 MIPS Assembly Practice

This repository contains a collection of small MIPS assembly programs written and tested in [MARS](https://computerscience.missouristate.edu/mars-mips-simulator.htm.)

The exercises start slow, testing simple concepts that are vital for understanding the MIPS ISA. Each program demonstrates a fundamental concept of the MIPS instruction set: registers, memory, syscalls, arithmetic, branching, procedures, stack usage, and more.

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

### 1. Arithmetic (arithmetic.asm)
* Demonstrates use of `$t` registers.
* Performs addition, subtraction, multiplication, division.
* Prints results via syscall.

### 2. Memory (memory.asm)
* Declares `.word` values in `data`.
* Loads them with lw, stores result with `sw`.
* Shows memory addressing basics.

### 3. Branching (branching.asm)
* Reads integer input.
* Uses `beq` to decide if number is even or odd.
* Prints result

### 4. Loops (loops.asm)
* Prints numbers 1-10 using a counter and branch

## ✨ Future Additions
* Logical Operations
* Strings
* Procedures
* Factorial with Recursion
* Array Operations
* Mini Calculator

## Key Takeaways
While these are just simple exercises, they still helped me solidify some important concepts in MIPS. Here are a few things I've learned!

### Ways of Loading and Storing Data Into Registers/Memeory
1. `li $t0, 10` - used for loading a constant (immediate value) directly into a register.
2. `lw $t0, offset($t1)` - Loads a 32-bit word from **memory** into a register.
- **Note:** It "$t1" in this case HAS to contain a memory address, not a value. "$t1" can also be a label in .data.
3. `la $t0, label` - Loads the **address** of a label (variable, array, etc.) into a register.
4. `lb $t0, offset($t1)` - Loads a single byte from **memory**.
- `lbu` does the same thing but is unsigned (doesn't preserve the sign bit).
5. `lui $t0, 0x1234` - Loads a 16-bit immediate into the upper half of a register and sets the lower half to 0.
6. `move $t0, $t1` - Copies the value from one register to another.

