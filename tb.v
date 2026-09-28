module shiftregister4_tb;
reg CLK;
reg RESET;
reg SI;
wire [3:0]Q;

shiftregister4 dut(
    .CLK(CLK),
    .RESET(RESET),
    .SI(SI),
    .Q(Q)
);

always #5 CLK = ~CLK;

initial begin 
    $dumpfile("shiftregister4.vcd");
    $dumpvars( 0 , shiftregister4_tb);
    CLK = 0;
    RESET = 1;
    SI = 0;

    #2;
    $display (" Time = %0t | RESET = %b | SI = %b | Q = %b",
    $time , RESET , SI , Q);

    #6;
    RESET = 0;
    SI = 1;
    #8;
    $display (" Time = %0t | RESET = %b | SI = %b | Q = %b",
    $time , RESET , SI , Q);

    SI = 0;
    #10;
    $display (" Time = %0t | RESET = %b | SI = %b | Q = %b",
    $time , RESET , SI , Q);

    SI = 1;
    #10;
    $display (" Time = %0t | RESET = %b | SI = %b | Q = %b",
    $time , RESET , SI , Q);

   RESET = 1;
   #2;
    $display (" Time = %0t | RESET = %b | SI = %b | Q = %b",
    $time , RESET , SI , Q);
     
    $display("Simulation finished");
    $finish;
end 
endmodule 