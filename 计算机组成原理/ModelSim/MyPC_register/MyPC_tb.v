module MyPC_tb();
    reg clk;
    reg rst = 1'b0;
    wire [7:0] initAddr = 8'b10000000;
    wire [7:0] pcAddr;
    
    
    //wire [9:0] cnt = 10'd0;
    
    always #60 assign rst = ~rst;//if(cnt%0==100) clk = ~clk;
    //assign cnt = cnt + 1'd1; 
        initial begin
		    #0
		        assign clk = 1'b1;
				//assign rst = 1'b0;
			  #10
			      assign clk = 1'b0;
			  #20
			      assign clk = ~clk;
			   #30
			       assign clk = 1'b1;
			   #40
			       assign clk = 1'b0;
			   #50
			       assign clk = ~clk;
				/*
			#50
				assign clk = 1'b0;
			#100 clk = ~clk;
			*/
			#100 $stop;
        end
    MyPC pc1(
        .clk(clk),
        .rst(rst),
        //.initAddr(initAddr),
        .pcAddr(pcAddr)
    );

endmodule
