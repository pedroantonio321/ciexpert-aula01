module tb_top();

    logic [7:0] a;
    logic [7:0] b;
    logic [7:0] op;
    logic [7:0] result;

    calc4 uu_dut (
        .a      (a),
        .b      (b),
        .op     (op),
        .result (result)
    );

    initial begin
        $display("op | a   | b   | result");
        $display("-----------------------");

        op = 8'd0; a = 8'd10; b = 8'd5; 
        #1ns;
        $display("%0d  | %0d  | %0d  | %0d", op, a, b, result);

        op = 8'd1; a = 8'd20; b = 8'd8; 
        #1ns;
        $display("%0d  | %0d  | %0d  | %0d", op, a, b, result);

        op = 8'd2; a = 8'd4;  b = 8'd5; 
        #1ns;
        $display("%0d  | %0d  | %0d  | %0d", op, a, b, result);

        op = 8'd3; a = 8'd100; b = 8'd4; 
        #1ns;
        $display("%0d  | %0d | %0d  | %0d", op, a, b, result);

        op = 8'd4; a = 8'd10; b = 8'd10;
        #1ns;
        $display("%0d  | %0d  | %0d  | %0d (Default)", op, a, b, result);

        $finish;
    end

endmodule
