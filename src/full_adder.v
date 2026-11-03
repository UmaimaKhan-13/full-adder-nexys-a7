// 1-bit full adder constructed from two half adders
module full_adder (
    input  wire a,      // Input bit A
    input  wire b,      // Input bit B
    input  wire cin,    // Carry-in
    output wire sum,    // Final sum output
    output wire cout    // Final carry-out
);
    wire s1, c1, c2;    // Intermediate sum and carry wires

    // Add inputs A and B
    half_adder HA1 (
        .a(a),
        .b(b),
        .sum(s1),
        .carry(c1)
    );

    // Add intermediate sum and carry-in
    half_adder HA2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .carry(c2)
    );

    // Combine carries
    assign cout = c1 | c2;

endmodule
