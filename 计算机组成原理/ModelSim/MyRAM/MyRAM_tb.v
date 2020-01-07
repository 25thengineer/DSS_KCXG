`timescale 1ns/1ns
module MyRAM_tb ();
parameter CYCLE = 8;
parameter ADDR_WIDTH = 10;
parameter DATA_WIDTH = 16;

reg clk;
reg WE;
reg [ADDR_WIDTH-1:0] address;
reg [DATA_WIDTH-1:0] dataIn;

wire [DATA_WIDTH-1:0] dataOut;


MyRAM  tb_u1(
    .clk                (clk),
    .WE              (WE),
    .address          (address),
    .dataIn             (dataIn),
    .dataOut                (dataOut)
);

initial begin
    clk = 1'b0;
end
always #(CYCLE/2) clk = ~ clk;
always #(CYCLE/2) WE = ~ WE;

initial begin
    WE = 1'b1;
    address = 10'd0;
    dataIn = 0;
    
    #(CYCLE*2)      
    WE = 1'b0;
    address = 10'd1;
    dataIn = 16'habcc;
    
    #(CYCLE*3)      
    WE = 1'b0;
    address = 10'd2;
    dataIn = 16'hbbdd;
    
    #(CYCLE*4)      
    WE = 1'b0;
    address = 10'd3;
    dataIn = 16'hccee;//
    
    #(CYCLE*5)      
    WE = 1'b0;
    address = 10'd4;
    dataIn = 16'h1234;
    
    #(CYCLE*6)      
    WE = 1'b0;
    address = 10'd1;
    dataIn = 16'h568f;
    
    //#(CYCLE*100) 
    //$stop;
    
    #(CYCLE*7)      
    WE = 1'b0;
    address = 10'd2;
    dataIn = 16'h568e;
    
    #(CYCLE*8) 
    WE = 1'b0;
    address = 8'd3;
    dataIn = 16'h568c;
    
    #(CYCLE*9) 
    WE = 1'b0;
    address = 10'd4;
    dataIn = 16'h568a;
    
    #(CYCLE*10)
    $stop;
    

end

endmodule