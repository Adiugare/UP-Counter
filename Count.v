
module count (
    input wire clk,
    input wire rst,
    output reg [3:0] out
);
    always @(posedge clk or posedge rst) begin
        if (rst)
            out <= 4'd0;
        else
            out <= out + 1;
    end
endmodule
