# 1-Bit Full Adder (Structural Modeling) on Nexys A7

A 1-bit full adder in Verilog, built structurally from two half adders
and one OR gate, implemented on the Digilent Nexys A7 (Artix-7) FPGA.

## Files
- `half_adder.v`: half adder (XOR + AND)
- `full_adder.v`: top module, 2 half adders + OR gate
- `tb_full_adder.v`: testbench covering all 8 input combinations
- `full_adder.xdc`: pin constraints for the Nexys A7

## Pin mapping
| Port | Board component | Pin |
|------|-----------------|-----|
| a    | SW0             | J15 |
| b    | SW1             | L16 |
| cin  | SW2             | M13 |
| sum  | LED0            | H17 |
| cout | LED1            | K15 |

## How to run
1. Create a Vivado project for the Nexys A7 part (xc7a100tcsg324-1 or xc7a50tcsg324-1).
2. Add the design files, the testbench (as a simulation source) and the XDC.
3. Set `full_adder` as the top module.
4. Run simulation, synthesis, implementation, then generate the bitstream.
5. Program the board and flip SW0 to SW2 to see the sum on LED0 and the carry on LED1.

## Blog post
[Link to your blog post]
