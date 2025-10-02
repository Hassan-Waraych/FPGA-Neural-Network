-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 15:40:10 2025
-- Host        : DESKTOP-RKGOGPE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/VivadoProjects/zybo_perceptron/zybo_perceptron.srcs/sources_1/bd/system/ip/system_top_0_0/system_top_0_0_stub.vhdl
-- Design      : system_top_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_top_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mode : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end system_top_0_0;

architecture stub of system_top_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rstn,sw[1:0],mode,led[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "top,Vivado 2020.1";
begin
end;
