`timescale 1ns / 1ps

// Testbench for 1-bit full adder
module tb_full_adder;
    reg a, b, cin;      // Inputs to UUT
    wire sum, cout;     // Outputs from UUT

    // Instantiate Unit Under Test
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    integer i;

    initial begin
        // Iterate through all 8 input combinations (000 to 111)
        for (i = 0; i < 8; i = i + 1) begin
            {a, b, cin} = i[2:0];
            #10;
        end
        $finish;
    end
endmodule
