
module resdisplay ( input [4:0] num,
  
  output [1:0] tenth,
  output [3:0] ones);
  
  
  assign tenth = (num >= 30) ? 2'd3:
                 (num >= 20) ? 2'd2:
                 (num >= 10) ? 2'd1 : 2'd0;
  
  assign ones = (num >= 30) ? (num - 5'd30) :
                (num >= 20) ? (num - 5'd20) :
                (num >= 10) ? (num - 5'd10) : num;
                
endmodule