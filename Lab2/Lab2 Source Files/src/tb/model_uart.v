`timescale 1ns / 1ps

module model_uart(/*AUTOARG*/
   // Outputs
   TX,
   // Inputs
   RX
   );

   output TX;
   input  RX;

   parameter baud    = 115200;
   parameter bittime = 1000000000/baud;
   parameter name    = "UART0";
   
   reg [7:0] rxData;
   event     evBit;
   event     evByte;
   event     evTxBit;
   event     evTxByte;
   reg       TX;
	reg[71:0]	 data;
	//reg[2:0] counter;

   initial
     begin
        TX = 1'b1;
		  //counter = 3'b0;
		  data = 72'b0;
     end
   
   always @ (negedge RX)
     begin
        rxData[7:0] = 8'h0;
        #(0.5*bittime);
        repeat (8)
          begin
             #bittime ->evBit;
             rxData[7:0] = {RX,rxData[7:1]};
          end
        ->evByte;
		 
			
     end
	  
	always @ (evByte) begin
		
		data = data << 8;
		data[7:0] = rxData;

		if(rxData == "\r") begin
				$display ("%d %s Received bytes: %s", $stime, name,
								data[71:16]);
				data[71:0] = 72'b0;
		end
	end
	

   task tskRxData;
      output [7:0] data;
      begin
         @(evByte);
         data[7:0] = rxData;
      end
   endtask // for
      
   task tskTxData;
      input [7:0] data;
      reg [9:0]   tmp;
      integer     i;
      begin
         tmp = {1'b1, data[7:0], 1'b0};
         for (i=0;i<10;i=i+1)
           begin
              TX = tmp[i];
              #bittime;
              ->evTxBit;
           end
         ->evTxByte;
      end
   endtask // tskTxData
   
endmodule // model_uart
