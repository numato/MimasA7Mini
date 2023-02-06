module MimasA7MiniRunningLight 
  (
    input clk,
    input rst,
    input [2:0] sw, //Inputs from the switches to control the LEDs
    output [7:0] LED,  // Output to the LEDs
    output [2:0] RGB  // Output to the RGB LEDs
  );

reg [7:0] LEDOut = 8'b00000001;
reg [2:0] RGBLED = 3'b001;

//Scale down the the clock for the visible display.
reg [24:0] count_reg = 0;
reg clk1 = 0;

always @(posedge clk) begin
  if (rst == 1'b1) begin
    count_reg <= 0;
    clk1 <= 0;
  end else begin
  if (count_reg == 3000000) begin
    count_reg <= 0;
    clk1 <= ~clk1;
  end else begin
    count_reg <= count_reg + 1'b1;
  end
  end
end
    
always @(posedge clk1, posedge rst)begin
  if(rst == 1'b1)begin
    LEDOut <= 8'b00000001;
    RGBLED <= 3'b010; //Red Blue
  end else begin
    LEDOut <= {LEDOut[6:0],LEDOut[7]};
    RGBLED <= {RGBLED[1:0],RGBLED[2]};
    
      if(sw[0] == 1'b1)begin
        LEDOut <= 8'b11111110;
        RGBLED <= 3'b110; //Red
      end
      else if(sw[1] == 1'b1)begin
        LEDOut <= 8'b11111101;
        RGBLED <= 3'b101; //Green
        end
      else if(sw[2] == 1'b1)begin
        LEDOut <= 8'b11111011;
        RGBLED <= 3'b011; //Blue
      end
  end
end

assign LED = LEDOut;
assign RGB = RGBLED;

endmodule