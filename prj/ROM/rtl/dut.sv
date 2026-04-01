module rom_model (
    input  logic [3:0]  addr,   // 4 bits de endereço (permite 16 posições)
    output logic [15:0] dout    // 16 bits de saída de dado
);

    always_comb begin
        case (addr)
            4'h0 : dout = 16'h0001;
            4'h1 : dout = 16'h0002;
            4'h2 : dout = 16'h0004;
            4'h3 : dout = 16'h0008;
            4'h4 : dout = 16'h0010;
            4'h5 : dout = 16'h0020;
            4'h6 : dout = 16'h0040;
            4'h7 : dout = 16'h0080;
            4'h8 : dout = 16'h0100;
            4'h9 : dout = 16'h0200;
            4'hA : dout = 16'h0400;
            4'hB : dout = 16'h0800;
            4'hC : dout = 16'h1000;
            4'hD : dout = 16'h2000;
            4'hE : dout = 16'h4000;
            4'hF : dout = 16'h8000;
            default: dout = 16'h0000;
        endcase
    end

endmodule
