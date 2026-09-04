# multiplyTwoNumbers
A simple program in LC3 Assembly that multiplies the R1 and R2 registers and stores the result in R0.

## What is committed

`src/multiplyTwoNumbers.asm` is a single LC-3 program, originating at `x3000` and ending with `HALT`. It is made up of two blocks:

- `TESTCODE:` clears R1 and R2, then loads 5 into R1 and 6 into R2.
- `MULTIPLY:` clears R0, then adds R1 into R0, decrements R2, and branches back to `AGAIN` on a positive result — in that source order, with the branch written after the addition. Multiplication is performed by repeated addition.

Because `TESTCODE:` loads its two operands unconditionally, the operands are fixed at 5 and 6 in the file as committed. The header comment of the source describes a different, caller-supplied contract — `pre execution we have num1 in R1 and num2 in R2` — and that contract is not reachable while `TESTCODE:` runs first. Which of the two is intended has not been decided.

## Building and running

No LC-3 assembler or simulator is named by this repository, so no build or run command is documented here yet. The file is assembled with an LC-3 assembler and run to `HALT` in an LC-3 simulator; the result register is R0, per the header comment of the source.
