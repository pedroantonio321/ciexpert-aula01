module ram_model (
    input  logic        clk,  
    input  logic [3:0]  addr,
    input  logic [15:0] din,
    input  logic        we,   // 0: read, 1: write
    output logic [15:0] dout
);
    logic [15:0] mem [0:15];

    always_ff @(posedge clk) begin
        if (we) 
            mem[addr] <= din;
    end

    assign dout = mem[addr];

endmodule
