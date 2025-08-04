`timescale 1ns / 100ps
module tb;

real p;
real n;
real c;

real r_p;
real r_n;
//intanciar el dut

comparador_dms dut (
    .p_i(p),
    .n_i(n),
    .c_o(c)
);

initial begin
    for (int i =0 ; i < 10; i++)begin
        r_p= $urandom_range(0,5);
        r_n= $urandom_range(0,5);
        p = r_p /100.0;
        n = r_n /100.0;
        #10

        if (p > n)
    $display("Tiempo: %t |  A= %0.2f es mayor que B= %0.2f ", $time, p, n);
    else
    $display("Tiempo: %t |  A= %0.2f es menor que B= %0.2f ", $time, p, n);

    end
    $finish;
end



//initial begin

// a = 1.2; b = 0.8; #10;
//    $display("Tiempo: %t | a = %0.2f, b = %0.2f => c = %0.1f (Se espera un 1)", $time, a, b, c);

//a = 0.5; b = 0.7; #10;
//$display("Tiempo: %t | a = %0.2f, b = %0.2f => c = %0.1f (Se espera un 0)", $time, a, b, c);

//$finish;
//end
  initial begin
    $timeformat(-9, 1, "ns", 10);
    $fsdbDumpvars;                // Synopsys VCS
  end

endmodule