`timescale 1ns / 1ps

/////////////////////////////////////////////////////////////////////////////
module Memoria_Numeros(direccion, rom, data_out, direccion_data,CLK,RST,ADDRV); 

input [9:0]ADDRV;
input CLK,RST;
input wire [4:0]direccion;  // Direccion de celdas (direccion) y de direccion en la celda de memoria (rom)
input wire [3:0]rom;		    // Direccion de celda
 
input  [3:0]direccion_data; //Seleccion de datos de salida
output [11:0]data_out;      //Datos de salida 

wire [8:0]rom_addr = {direccion,rom}; //direccion completa en banco de memoria 
reg  [15:0]rom_data; 					   // Datos de memoria  

always @(*) 			 // Se ejecuta cada 9'h03F  : rom_data <= 384'hez que se cahia la direccion ingresada 
begin
	case (rom_addr)	 // Dependiendo del lugar de memoria que se esta empleando se en9'h03F  : rom_data <= 384'hia un hus de datos 

	9'h000  : rom_data <= 16'b0000000000000000;
	9'h010  : rom_data <= 16'b0000000000000000;
	9'h020  : rom_data <= 16'b0000111111110000;
	9'h030  : rom_data <= 16'b0001111111111000;
	9'h040  : rom_data <= 16'b0011111001111100;
	9'h050  : rom_data <= 16'b0011110000111100;
	9'h060  : rom_data <= 16'b0011100000011100;
	9'h070  : rom_data <= 16'b0011100000011100;
	9'h080  : rom_data <= 16'b0011100000011100;
	9'h090  : rom_data <= 16'b0011100000011100;
	9'h0A0  : rom_data <= 16'b0011100000011100;
	9'h0B0  : rom_data <= 16'b0011100000011100;
	9'h0C0  : rom_data <= 16'b0011100000011100;
	9'h0D0  : rom_data <= 16'b0011100000011100;
	9'h0E0  : rom_data <= 16'b0011100000011100;
	9'h0F0  : rom_data <= 16'b0011100000011100;
	9'h100  : rom_data <= 16'b0011100000011100;
	9'h110  : rom_data <= 16'b0011100000011100;
	9'h120  : rom_data <= 16'b0011100000011100;
	9'h130  : rom_data <= 16'b0011100000011100;
	9'h140  : rom_data <= 16'b0011100000011100;
	9'h150  : rom_data <= 16'b0011100000011100;
	9'h160  : rom_data <= 16'b0011100000011100;
	9'h170  : rom_data <= 16'b0011100000011100;
	9'h180  : rom_data <= 16'b0011100000011100;
	9'h190  : rom_data <= 16'b0011100000011100;
	9'h1A0  : rom_data <= 16'b0011110000111100;
	9'h1B0  : rom_data <= 16'b0011111001111100;
	9'h1C0  : rom_data <= 16'b0001111111111000;
	9'h1D0  : rom_data <= 16'b0000111111110000;
	9'h1E0  : rom_data <= 16'b0000000000000000;
	9'h1F0  : rom_data <= 16'b0000000000000000;


	9'h001  : rom_data <= 16'b0000000000000000;
	9'h011  : rom_data <= 16'b0000000000000000;
	9'h021  : rom_data <= 16'b0000000000111100;
	9'h031  : rom_data <= 16'b0000000011111100;
	9'h041  : rom_data <= 16'b0000000111111100;
	9'h051  : rom_data <= 16'b0000000000011100;
	9'h061  : rom_data <= 16'b0000000000011100;
	9'h071  : rom_data <= 16'b0000000000011100;
	9'h081  : rom_data <= 16'b0000000000011100;
	9'h091  : rom_data <= 16'b0000000000011100;
	9'h0A1  : rom_data <= 16'b0000000000011100;
	9'h0B1  : rom_data <= 16'b0000000000011100;
	9'h0C1  : rom_data <= 16'b0000000000011100;
	9'h0D1  : rom_data <= 16'b0000000000011100;
	9'h0E1  : rom_data <= 16'b0000000000011100;
	9'h0F1  : rom_data <= 16'b0000000000011100;
	9'h101  : rom_data <= 16'b0000000000011100;
	9'h111  : rom_data <= 16'b0000000000011100;
	9'h121  : rom_data <= 16'b0000000000011100;
	9'h131  : rom_data <= 16'b0000000000011100;
	9'h141  : rom_data <= 16'b0000000000011100;
	9'h151  : rom_data <= 16'b0000000000011100;
	9'h161  : rom_data <= 16'b0000000000011100;
	9'h171  : rom_data <= 16'b0000000000011100;
	9'h181  : rom_data <= 16'b0000000000011100;
	9'h191  : rom_data <= 16'b0000000000011100;
	9'h1A1  : rom_data <= 16'b0000000000011100;
	9'h1B1  : rom_data <= 16'b0000000000011100;
	9'h1C1  : rom_data <= 16'b0000000000011100;
	9'h1D1  : rom_data <= 16'b0000000000011100;
	9'h1E1  : rom_data <= 16'b0000000000000000;
	9'h1F1  : rom_data <= 16'b0000000000000000;
	
	
	9'h002  : rom_data <= 16'b0000000000000000;
	9'h012  : rom_data <= 16'b0000000000000000;
	9'h022  : rom_data <= 16'b0001111111100000;
	9'h032  : rom_data <= 16'b0011111111111000;
	9'h042  : rom_data <= 16'b0011100001111100;
	9'h052  : rom_data <= 16'b0000000000011100;
	9'h062  : rom_data <= 16'b0000000000011100;
	9'h072  : rom_data <= 16'b0000000000011100;
	9'h082  : rom_data <= 16'b0000000000011100;
	9'h092  : rom_data <= 16'b0000000000011100;
	9'h0A2  : rom_data <= 16'b0000000000011100;
	9'h0B2  : rom_data <= 16'b0000000000011100;
	9'h0C2  : rom_data <= 16'b0000000000111000;
	9'h0D2  : rom_data <= 16'b0000000011110000;
	9'h0E2  : rom_data <= 16'b0000000111000000;
	9'h0F2  : rom_data <= 16'b0000000111000000;
	9'h102  : rom_data <= 16'b0000000111000000;
	9'h112  : rom_data <= 16'b0000011100000000;
	9'h122  : rom_data <= 16'b0000011100000000;
	9'h132  : rom_data <= 16'b0000011100000000;
	9'h142  : rom_data <= 16'b0000111000000000;
	9'h152  : rom_data <= 16'b0000111000000000;
	9'h162  : rom_data <= 16'b0000111000000000;
	9'h172  : rom_data <= 16'b0001110000000000;
	9'h182  : rom_data <= 16'b0001110000000000;
	9'h192  : rom_data <= 16'b0001110000000000;
	9'h1A2  : rom_data <= 16'b0011110000000000;
	9'h1B2  : rom_data <= 16'b0011111000000000;
	9'h1C2  : rom_data <= 16'b0011111101111100;
	9'h1D2  : rom_data <= 16'b0001111111111100;
	9'h1E2  : rom_data <= 16'b0000000000000000;
	9'h1F2  : rom_data <= 16'b0000000000000000;
	
	
	9'h003  : rom_data <= 16'b0000000000000000;
	9'h013  : rom_data <= 16'b0000000000000000;
	9'h023  : rom_data <= 16'b0001111111111000;
	9'h033  : rom_data <= 16'b0011111111111100;
	9'h043  : rom_data <= 16'b0001111111111100;
	9'h053  : rom_data <= 16'b0000000001111100;
	9'h063  : rom_data <= 16'b0000000000011100;
	9'h073  : rom_data <= 16'b0000000000011100;
	9'h083  : rom_data <= 16'b0000000000011100;
	9'h093  : rom_data <= 16'b0000000000011100;
	9'h0A3  : rom_data <= 16'b0000000000011100;
	9'h0B3  : rom_data <= 16'b0000000000011100;
	9'h0C3  : rom_data <= 16'b0000000000011100;
	9'h0D3  : rom_data <= 16'b0000000000011100;
	9'h0E3  : rom_data <= 16'b0000000000111100;
	9'h0F3  : rom_data <= 16'b0011111111111100;
	9'h103  : rom_data <= 16'b0011111111111100;
	9'h113  : rom_data <= 16'b0001111111111100;
	9'h123  : rom_data <= 16'b0000000000111100;
	9'h133  : rom_data <= 16'b0000000000011100;
	9'h143  : rom_data <= 16'b0000000000011100;
	9'h153  : rom_data <= 16'b0000000000011100;
	9'h163  : rom_data <= 16'b0000000000011100;
	9'h173  : rom_data <= 16'b0000000000011100;
	9'h183  : rom_data <= 16'b0000000000011100;
	9'h193  : rom_data <= 16'b0000000000011100;
	9'h1A3  : rom_data <= 16'b0000000000111100;
	9'h1B3  : rom_data <= 16'b0001111111111100;
	9'h1C3  : rom_data <= 16'b0011111111111000;
	9'h1D3  : rom_data <= 16'b0001111111110000;
	9'h1E3  : rom_data <= 16'b0000000000000000;
	9'h1F3  : rom_data <= 16'b0000000000000000;


	9'h004  : rom_data <= 16'b0000000000000000;
	9'h014  : rom_data <= 16'b0000000000000000;
	9'h024  : rom_data <= 16'b0011100000011100;
	9'h034  : rom_data <= 16'b0011100000011100;
	9'h044  : rom_data <= 16'b0011100000011100;
	9'h054  : rom_data <= 16'b0011100000011100;
	9'h064  : rom_data <= 16'b0011100000011100;
	9'h074  : rom_data <= 16'b0011100000011100;
	9'h084  : rom_data <= 16'b0011100000011100;
	9'h094  : rom_data <= 16'b0011100000011100;
	9'h0A4  : rom_data <= 16'b0011100000011100;
	9'h0B4  : rom_data <= 16'b0011100000011100;
	9'h0C4  : rom_data <= 16'b0011100000011100;
	9'h0D4  : rom_data <= 16'b0011100000011100;
	9'h0E4  : rom_data <= 16'b0011111111111100;
	9'h0F4  : rom_data <= 16'b0011111111111100;
	9'h104  : rom_data <= 16'b0001111111111100;
	9'h114  : rom_data <= 16'b0000000000011100;
	9'h124  : rom_data <= 16'b0000000000011100;
	9'h134  : rom_data <= 16'b0000000000011100;
	9'h144  : rom_data <= 16'b0000000000011100;
	9'h154  : rom_data <= 16'b0000000000011100;
	9'h164  : rom_data <= 16'b0000000000011100;
	9'h174  : rom_data <= 16'b0000000000011100;
	9'h184  : rom_data <= 16'b0000000000011100;
	9'h194  : rom_data <= 16'b0000000000011100;
	9'h1A4  : rom_data <= 16'b0000000000011100;
	9'h1B4  : rom_data <= 16'b0000000000011100;
	9'h1C4  : rom_data <= 16'b0000000000011100;
	9'h1D4  : rom_data <= 16'b0000000000011100;
	9'h1E4  : rom_data <= 16'b0000000000000000;
	9'h1F4  : rom_data <= 16'b0000000000000000;
	
	
	9'h005  : rom_data <= 16'b0000000000000000;
	9'h015  : rom_data <= 16'b0000000000000000;
	9'h025  : rom_data <= 16'b0001111111111000;
	9'h035  : rom_data <= 16'b0011111111111100;
	9'h045  : rom_data <= 16'b0011111111111000;
	9'h055  : rom_data <= 16'b0011100000000000;
	9'h065  : rom_data <= 16'b0011100000000000;
	9'h075  : rom_data <= 16'b0011100000000000;
	9'h085  : rom_data <= 16'b0011100000000000;
	9'h095  : rom_data <= 16'b0011100000000000;
	9'h0A5  : rom_data <= 16'b0011100000000000;
	9'h0B5  : rom_data <= 16'b0011100000000000;
	9'h0C5  : rom_data <= 16'b0011100000000000;
	9'h0D5  : rom_data <= 16'b0011100000000000;
	9'h0E5  : rom_data <= 16'b0011100000000000;
	9'h0F5  : rom_data <= 16'b0011111111111000;
	9'h105  : rom_data <= 16'b0001111111111100;
	9'h115  : rom_data <= 16'b0000111111111100;
	9'h125  : rom_data <= 16'b0000000000011100;
	9'h135  : rom_data <= 16'b0000000000011100;
	9'h145  : rom_data <= 16'b0000000000011100;
	9'h155  : rom_data <= 16'b0000000000011100;
	9'h165  : rom_data <= 16'b0000000000011100;
	9'h175  : rom_data <= 16'b0000000000011100;
	9'h185  : rom_data <= 16'b0000000000011100;
	9'h195  : rom_data <= 16'b0000000000011100;
	9'h1A5  : rom_data <= 16'b0000000000011100;
	9'h1B5  : rom_data <= 16'b0000000000011100;
	9'h1C5  : rom_data <= 16'b0011111111111100;
	9'h1D5  : rom_data <= 16'b0011111111111000;
	9'h1E5  : rom_data <= 16'b0011111111110000;
	9'h1F5  : rom_data <= 16'b0000000000000000;
	
	
	9'h006  : rom_data <= 16'b0000000000000000;
	9'h016  : rom_data <= 16'b0000000000000000;
	9'h026  : rom_data <= 16'b0001111111111000;
	9'h036  : rom_data <= 16'b0011111111111100;
	9'h046  : rom_data <= 16'b0011111111111000;
	9'h056  : rom_data <= 16'b0011100000000000;
	9'h066  : rom_data <= 16'b0011100000000000;
	9'h076  : rom_data <= 16'b0011100000000000;
	9'h086  : rom_data <= 16'b0011100000000000;
	9'h096  : rom_data <= 16'b0011100000000000;
	9'h0A6  : rom_data <= 16'b0011100000000000;
	9'h0B6  : rom_data <= 16'b0011100000000000;
	9'h0C6  : rom_data <= 16'b0011100000000000;
	9'h0D6  : rom_data <= 16'b0011100000000000;
	9'h0E6  : rom_data <= 16'b0011100000000000;
	9'h0F6  : rom_data <= 16'b0011111111111000;
	9'h106  : rom_data <= 16'b0011111111111100;
	9'h116  : rom_data <= 16'b0011111111111100;
	9'h126  : rom_data <= 16'b0011110000111100;
	9'h136  : rom_data <= 16'b0011100000011100;
	9'h146  : rom_data <= 16'b0011100000011100;
	9'h156  : rom_data <= 16'b0011100000011100;
	9'h166  : rom_data <= 16'b0011100000011100;
	9'h176  : rom_data <= 16'b0011100000011100;
	9'h186  : rom_data <= 16'b0011100000011100;
	9'h196  : rom_data <= 16'b0011100000011100;
	9'h1A6  : rom_data <= 16'b0011110000111100;
	9'h1B6  : rom_data <= 16'b0011111111111100;
	9'h1C6  : rom_data <= 16'b0011111111111100;
	9'h1D6  : rom_data <= 16'b0001111111111000;
	9'h1E6  : rom_data <= 16'b0000000000000000;
	9'h1F6  : rom_data <= 16'b0000000000000000;
	
	
	9'h007  : rom_data <= 16'b0000000000000000;
	9'h017  : rom_data <= 16'b0000000000000000;
	9'h027  : rom_data <= 16'b0011111111111100;
	9'h037  : rom_data <= 16'b0011111111111100;
	9'h047  : rom_data <= 16'b0011111111111100;
	9'h057  : rom_data <= 16'b0000000000011100;
	9'h067  : rom_data <= 16'b0000000000011100;
	9'h077  : rom_data <= 16'b0000000000011100;
	9'h087  : rom_data <= 16'b0000000000111000;
	9'h097  : rom_data <= 16'b0000000000111000;
	9'h0A7  : rom_data <= 16'b0000000000111000;
	9'h0B7  : rom_data <= 16'b0000000001110000;
	9'h0C7  : rom_data <= 16'b0000000001110000;
	9'h0D7  : rom_data <= 16'b0000000001110000;
	9'h0E7  : rom_data <= 16'b0000000001110000;
	9'h0F7  : rom_data <= 16'b0000000011100000;
	9'h107  : rom_data <= 16'b0000000011100000;
	9'h117  : rom_data <= 16'b0000000011100000;
	9'h127  : rom_data <= 16'b0000000111000000;
	9'h137  : rom_data <= 16'b0000000111000000;
	9'h147  : rom_data <= 16'b0000000111000000;
	9'h157  : rom_data <= 16'b0000001110000000;
	9'h167  : rom_data <= 16'b0000001110000000;
	9'h177  : rom_data <= 16'b0000001110000000;
	9'h187  : rom_data <= 16'b0000011100000000;
	9'h197  : rom_data <= 16'b0000011100000000;
	9'h1A7  : rom_data <= 16'b0000011100000000;
	9'h1B7  : rom_data <= 16'b0000111000000000;
	9'h1C7  : rom_data <= 16'b0000111000000000;
	9'h1D7  : rom_data <= 16'b0001110000000000;
	9'h1E7  : rom_data <= 16'b0000000000000000;
	9'h1F7  : rom_data <= 16'b0000000000000000;
	
	
	9'h008  : rom_data <= 16'b0000000000000000;
	9'h018  : rom_data <= 16'b0000000000000000;
	9'h028  : rom_data <= 16'b0001111111111000;
	9'h038  : rom_data <= 16'b0011111111111100;
	9'h048  : rom_data <= 16'b0011111111111100;
	9'h058  : rom_data <= 16'b0011110000111100;
	9'h068  : rom_data <= 16'b0011100000011100;
	9'h078  : rom_data <= 16'b0011100000011100;
	9'h088  : rom_data <= 16'b0011100000011100;
	9'h098  : rom_data <= 16'b0011100000011100;
	9'h0A8  : rom_data <= 16'b0011100000011100;
	9'h0B8  : rom_data <= 16'b0011100000011100;
	9'h0C8  : rom_data <= 16'b0011100000011100;
	9'h0D8  : rom_data <= 16'b0011110000111100;
	9'h0E8  : rom_data <= 16'b0011111111111100;
	9'h0F8  : rom_data <= 16'b0001111111111000;
	9'h108  : rom_data <= 16'b0001111111111000;
	9'h118  : rom_data <= 16'b0011110000111100;
	9'h128  : rom_data <= 16'b0011100000011100;
	9'h138  : rom_data <= 16'b0011100000011100;
	9'h148  : rom_data <= 16'b0011100000011100;
	9'h158  : rom_data <= 16'b0011100000011100;
	9'h168  : rom_data <= 16'b0011100000011100;
	9'h178  : rom_data <= 16'b0011100000011100;
	9'h188  : rom_data <= 16'b0011100000011100;
	9'h198  : rom_data <= 16'b0011100000011100;
	9'h1A8  : rom_data <= 16'b0011110000111100;
	9'h1B8  : rom_data <= 16'b0011111111111100;
	9'h1C8  : rom_data <= 16'b0011111111111100;
	9'h1D8  : rom_data <= 16'b0001111111111000;
	9'h1E8  : rom_data <= 16'b0000000000000000;
	9'h1F8  : rom_data <= 16'b0000000000000000;
	
	
	9'h009  : rom_data <= 16'b0000000000000000;
	9'h019  : rom_data <= 16'b0000000000000000;
	9'h029  : rom_data <= 16'b0001111111111000;
	9'h039  : rom_data <= 16'b0011111111111100;
	9'h049  : rom_data <= 16'b0011111111111100;
	9'h059  : rom_data <= 16'b0011110000111100;
	9'h069  : rom_data <= 16'b0011100000011100;
	9'h079  : rom_data <= 16'b0011100000011100;
	9'h089  : rom_data <= 16'b0011100000011100;
	9'h099  : rom_data <= 16'b0011100000011100;
	9'h0A9  : rom_data <= 16'b0011100000011100;
	9'h0B9  : rom_data <= 16'b0011100000011100;
	9'h0C9  : rom_data <= 16'b0011110000111100;
	9'h0D9  : rom_data <= 16'b0011111111111100;
	9'h0E9  : rom_data <= 16'b0011111111111100;
	9'h0F9  : rom_data <= 16'b0001111111111100;
	9'h109  : rom_data <= 16'b0000000000011100;
	9'h119  : rom_data <= 16'b0000000000011100;
	9'h129  : rom_data <= 16'b0000000000011100;
	9'h139  : rom_data <= 16'b0000000000011100;
	9'h149  : rom_data <= 16'b0000000000011100;
	9'h159  : rom_data <= 16'b0000000000011100;
	9'h169  : rom_data <= 16'b0000000000011100;
	9'h179  : rom_data <= 16'b0000000000011100;
	9'h189  : rom_data <= 16'b0000000000011100;
	9'h199  : rom_data <= 16'b0000000000011100;
	9'h1A9  : rom_data <= 16'b0000000000011100;
	9'h1B9  : rom_data <= 16'b0000000000011100;
	9'h1C9  : rom_data <= 16'b0000000000011100;
	9'h1D9  : rom_data <= 16'b0000000000011100;
	9'h1E9  : rom_data <= 16'b0000000000000000;
	9'h1F9  : rom_data <= 16'b0000000000000000;

////////////////////////////////////////////////////////////
	default : rom_data <= 384'h00000000;        //En caso de que se use una celda de memoria no especificada se en9'h03F  : rom_data <= 384'hian ceros a la salida 
	endcase
end

reg ON;

always @(*)
begin
	case(direccion_data)
	
	4'h0 : ON = rom_data[15]; 
	4'h1 : ON = rom_data[14]; 
	4'h2 : ON = rom_data[13]; 
	4'h3 : ON = rom_data[12]; 
	4'h4 : ON = rom_data[11]; 
	4'h5 : ON = rom_data[10]; 
	4'h6 : ON = rom_data[9]; 
	4'h7 : ON = rom_data[8]; 
	4'h8 : ON = rom_data[7]; 
	4'h9 : ON = rom_data[6];
	4'hA : ON = rom_data[5]; 
	4'hB : ON = rom_data[4]; 
	4'hC : ON = rom_data[3]; 
	4'hD : ON = rom_data[2]; 
	4'hE : ON = rom_data[1]; 
	4'hF : ON = rom_data[0]; 
	
	default ON = 1'b0;		
	endcase 
end 

Degradado Deg_Colores (ON,CLK,RST,data_out,ADDRV);

endmodule 