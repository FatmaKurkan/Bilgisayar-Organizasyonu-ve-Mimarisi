 // Code your design here
// 8 bitlik 4'e 1 MUX tasarimi
// Dort giristen biri secilerek cikisa aktarilir.

module mux4to1_8bit (
    input logic [7:0] in0,  // 1. veri girisi
    input logic [7:0] in1,  // 2. veri girisi
    input logic [7:0] in2,  // 3. veri girisi
    input logic [7:0] in3,  // 4. veri girisi
    input logic [1:0] sel,  // Giris secimini belirler
    output logic [7:0] out  // Secilen verinin cikisi
);

    // Giris degisimlerine gore cikis hesaplanir.
    always_comb begin

        // Sel degerine gore uygun giris secilir.
        case (sel)
            2'b00: out = in0;
            2'b01: out = in1;
            2'b10: out = in2;
            2'b11: out = in3;
            default: out = 8'b0;
        endcase

    end

endmodule
