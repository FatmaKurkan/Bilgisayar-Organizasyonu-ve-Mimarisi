 // Code your testbench here
// or browse Examples
// MUX devresinin dogru calisip calismadigini test eder.
module tb_mux4to1_8bit;
​
    // Test icin kullanilacak giris ve cikis sinyalleri
    logic [7:0] in0, in1, in2, in3;
    logic [1:0] sel;
    logic [7:0] out;
​
    // Tasarim modulu test ortamına baglanir.
    // (.*) ayni isimli sinyalleri otomatik baglar.
    mux4to1_8bit uut (.*);
​
    initial begin
​
        // Her girise farkli bir deger verilir.
        in0 = 8'h11;
        in1 = 8'h22;
        in2 = 8'h33;
        in3 = 8'h44;
​
        // Her secim durumu sirasiyla test edilir.
        $display("--- TEST BASLADI ---");
​
        sel = 2'b00;
        #10;
        $display("sel = %b, out = %h", sel, out);
​
        sel = 2'b01;
        #10;
        $display("sel = %b, out = %h", sel, out);
​
        sel = 2'b10;
        #10;
        $display("sel = %b, out = %h", sel, out);
​
        sel = 2'b11;
        #10;
        $display("sel = %b, out = %h", sel, out);
​
        // Test tamamlaninca simulasyon bitirilir.
        $display("--- TEST BITTI ---");
        $finish;
    end
​
endmodule
​
