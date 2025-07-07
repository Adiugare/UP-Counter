module count_tb;
    reg clk;
    reg rst;
    wire [3:0] out;

    // Instantiate the counter
    count uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    // Clock generation: 10ns period
    always #5 clk = ~clk;

    initial begin
        // Initialize signals
        clk = 0;
        rst = 1;

        // Hold reset for a short while
        #10;
        rst = 0;

        // Run simulation long enough to see multiple counts
        #200;

        $stop;
    end
endmodule
