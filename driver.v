`timescale 1ns / 1ps
/*
 ******************************************************************************
 * Autor: Rafael Moreno 13-10936, Amanda Barrios 14-10079, Daniela Carfora 15-10242.
 * Módulo: Driver 7-segmentos
 ******************************************************************************
 */
 
module driver(
	//declaracion de entradas y salidas
    input [3:0] anodos_i, // switches @ FPGA
    input [3:0] number_i, // switches @ FPGA
    output [3:0] anodos_o, // visualizadores de 7 segmentos
    output reg [7:0] segmentos_o, // segmentos de cada visualizador
    );



assign anodos_o = anodos_i;

always @(*) begin
    case (number_i)
                              
                            //g,f,e,d,c,b,a,dp.
        4'h0: segmentos_o = 8'b00000011;			// Hexagecimal 0
        4'h1: segmentos_o = 8'b10011111;			// Hexagecimal 1
		4'h2: segmentos_o = 8'b00100101;			// Hexagecimal 2
		4'h3: segmentos_o = 8'b00001101;			// Hexagecimal 3
		4'h4: segmentos_o = 8'b10011001;			// Hexagecimal 4
		4'h5: segmentos_o = 8'b01001001;			// Hexagecimal 5
		4'h6: segmentos_o = 8'b01000001;			// Hexagecimal 6
		4'h7: segmentos_o = 8'b00011111;			// Hexagecimal 7
		4'h8: segmentos_o = 8'b00000001;			// Hexagecimal 8
		4'h9: segmentos_o = 8'b00001001;			// Hexagecimal 9
		4'hA: segmentos_o = 8'b00010001;			// Hexagecimal A
		4'hB: segmentos_o = 8'b11000001;			// Hexagecimal B
 		4'hC: segmentos_o = 8'b01100011;			// Hexagecimal C
		4'hD: segmentos_o = 8'b10000101;			// Hexagecimal D
		4'hE: segmentos_o = 8'b01100001;			// Hexagecimal E
		4'hF: segmentos_o = 8'b01110001;			// Hexagecimal F
		
    endcase
end

endmodule
// ****************************************************************************
// EOF
// ****************************************************************************