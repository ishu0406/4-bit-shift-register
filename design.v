module shiftregister4 (
    input CLK,
    input RESET,
    input SI,
    output reg [3:0]Q
);
always @(posedge CLK or posedge RESET)
begin 
    if (RESET)
      Q <= 4'b0000;
    else 
      Q <= {Q[2:0], SI};
end 
endmodule 