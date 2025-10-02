-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct  2 15:40:10 2025
-- Host        : DESKTOP-RKGOGPE running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/VivadoProjects/zybo_perceptron/zybo_perceptron.srcs/sources_1/bd/system/ip/system_top_0_0/system_top_0_0_sim_netlist.vhdl
-- Design      : system_top_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_top_0_0_perceptron is
  port (
    led : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_top_0_0_perceptron : entity is "perceptron";
end system_top_0_0_perceptron;

architecture STRUCTURE of system_top_0_0_perceptron is
  signal acc_n_0 : STD_LOGIC;
  signal \acc_rep__0_n_0\ : STD_LOGIC;
  signal \acc_rep__1_n_0\ : STD_LOGIC;
  signal \acc_rep__2_n_0\ : STD_LOGIC;
  signal acc_rep_n_0 : STD_LOGIC;
  signal \y0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \y0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \y0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \y0_carry__0_n_1\ : STD_LOGIC;
  signal \y0_carry__0_n_2\ : STD_LOGIC;
  signal \y0_carry__0_n_3\ : STD_LOGIC;
  signal \y0_carry_i_1__1_n_0\ : STD_LOGIC;
  signal y0_carry_i_2_n_0 : STD_LOGIC;
  signal y0_carry_i_3_n_0 : STD_LOGIC;
  signal y0_carry_i_4_n_0 : STD_LOGIC;
  signal y0_carry_i_5_n_0 : STD_LOGIC;
  signal y0_carry_n_0 : STD_LOGIC;
  signal y0_carry_n_1 : STD_LOGIC;
  signal y0_carry_n_2 : STD_LOGIC;
  signal y0_carry_n_3 : STD_LOGIC;
  signal NLW_y0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of y0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \y0_carry__0\ : label is 11;
begin
acc: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => acc_n_0
    );
acc_rep: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => acc_rep_n_0
    );
\acc_rep__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \acc_rep__0_n_0\
    );
\acc_rep__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \acc_rep__1_n_0\
    );
\acc_rep__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \acc_rep__2_n_0\
    );
y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y0_carry_n_0,
      CO(2) => y0_carry_n_1,
      CO(1) => y0_carry_n_2,
      CO(0) => y0_carry_n_3,
      CYINIT => '0',
      DI(3) => \acc_rep__1_n_0\,
      DI(2) => \acc_rep__0_n_0\,
      DI(1) => acc_rep_n_0,
      DI(0) => \y0_carry_i_1__1_n_0\,
      O(3 downto 0) => NLW_y0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => y0_carry_i_2_n_0,
      S(2) => y0_carry_i_3_n_0,
      S(1) => y0_carry_i_4_n_0,
      S(0) => y0_carry_i_5_n_0
    );
\y0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y0_carry_n_0,
      CO(3) => \NLW_y0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \y0_carry__0_n_1\,
      CO(1) => \y0_carry__0_n_2\,
      CO(0) => \y0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => acc_n_0,
      DI(0) => \acc_rep__2_n_0\,
      O(3 downto 0) => \NLW_y0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \y0_carry__0_i_1_n_0\,
      S(1) => \y0_carry__0_i_2_n_0\,
      S(0) => \y0_carry__0_i_3_n_0\
    );
\y0_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry__0_i_1_n_0\
    );
\y0_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry__0_i_2_n_0\
    );
\y0_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry__0_i_3_n_0\
    );
\y0_carry_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_1__1_n_0\
    );
y0_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => y0_carry_i_2_n_0
    );
y0_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => y0_carry_i_3_n_0
    );
y0_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => y0_carry_i_4_n_0
    );
y0_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => y0_carry_i_5_n_0
    );
y_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \y0_carry__0_n_1\,
      Q => led(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_top_0_0_perceptron_0 is
  port (
    led : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_top_0_0_perceptron_0 : entity is "perceptron";
end system_top_0_0_perceptron_0;

architecture STRUCTURE of system_top_0_0_perceptron_0 is
  signal p_0_in : STD_LOGIC;
begin
y_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => p_0_in
    );
y_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => led(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_top_0_0_perceptron_1 is
  port (
    led : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_top_0_0_perceptron_1 : entity is "perceptron";
end system_top_0_0_perceptron_1;

architecture STRUCTURE of system_top_0_0_perceptron_1 is
  signal \y0_carry__0_n_1\ : STD_LOGIC;
  signal \y0_carry__0_n_2\ : STD_LOGIC;
  signal \y0_carry__0_n_3\ : STD_LOGIC;
  signal \y0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal y0_carry_i_1_n_0 : STD_LOGIC;
  signal \y0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal \y0_carry_i_2__1_n_0\ : STD_LOGIC;
  signal \y0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal \y0_carry_i_3__1_n_0\ : STD_LOGIC;
  signal \y0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal \y0_carry_i_4__1_n_0\ : STD_LOGIC;
  signal \y0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal \y0_carry_i_5__1_n_0\ : STD_LOGIC;
  signal y0_carry_i_6_n_0 : STD_LOGIC;
  signal y0_carry_i_7_n_0 : STD_LOGIC;
  signal y0_carry_i_8_n_0 : STD_LOGIC;
  signal y0_carry_n_0 : STD_LOGIC;
  signal y0_carry_n_1 : STD_LOGIC;
  signal y0_carry_n_2 : STD_LOGIC;
  signal y0_carry_n_3 : STD_LOGIC;
  signal NLW_y0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_y0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_y0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute COMPARATOR_THRESHOLD : integer;
  attribute COMPARATOR_THRESHOLD of y0_carry : label is 11;
  attribute COMPARATOR_THRESHOLD of \y0_carry__0\ : label is 11;
begin
y0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => y0_carry_n_0,
      CO(2) => y0_carry_n_1,
      CO(1) => y0_carry_n_2,
      CO(0) => y0_carry_n_3,
      CYINIT => '0',
      DI(3) => \y0_carry_i_1__0_n_0\,
      DI(2) => \y0_carry_i_2__0_n_0\,
      DI(1) => \y0_carry_i_3__0_n_0\,
      DI(0) => \y0_carry_i_4__0_n_0\,
      O(3 downto 0) => NLW_y0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \y0_carry_i_5__0_n_0\,
      S(2) => y0_carry_i_6_n_0,
      S(1) => y0_carry_i_7_n_0,
      S(0) => y0_carry_i_8_n_0
    );
\y0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => y0_carry_n_0,
      CO(3) => \NLW_y0_carry__0_CO_UNCONNECTED\(3),
      CO(2) => \y0_carry__0_n_1\,
      CO(1) => \y0_carry__0_n_2\,
      CO(0) => \y0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => y0_carry_i_1_n_0,
      DI(0) => \y0_carry_i_2__1_n_0\,
      O(3 downto 0) => \NLW_y0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \y0_carry_i_3__1_n_0\,
      S(1) => \y0_carry_i_4__1_n_0\,
      S(0) => \y0_carry_i_5__1_n_0\
    );
y0_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => y0_carry_i_1_n_0
    );
\y0_carry_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_1__0_n_0\
    );
\y0_carry_i_2__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_2__0_n_0\
    );
\y0_carry_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_2__1_n_0\
    );
\y0_carry_i_3__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_3__0_n_0\
    );
\y0_carry_i_3__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry_i_3__1_n_0\
    );
\y0_carry_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => \y0_carry_i_4__0_n_0\
    );
\y0_carry_i_4__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry_i_4__1_n_0\
    );
\y0_carry_i_5__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry_i_5__0_n_0\
    );
\y0_carry_i_5__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => \y0_carry_i_5__1_n_0\
    );
y0_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => y0_carry_i_6_n_0
    );
y0_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => Q(0),
      I1 => Q(1),
      O => y0_carry_i_7_n_0
    );
y0_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      O => y0_carry_i_8_n_0
    );
y_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \y0_carry__0_n_1\,
      Q => led(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_top_0_0_top is
  port (
    led : out STD_LOGIC_VECTOR ( 2 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_top_0_0_top : entity is "top";
end system_top_0_0_top;

architecture STRUCTURE of system_top_0_0_top is
  signal t1 : STD_LOGIC;
  signal \x_sync[1]_i_1_n_0\ : STD_LOGIC;
  signal \x_sync_reg_n_0_[0]\ : STD_LOGIC;
begin
u_perc_and: entity work.system_top_0_0_perceptron
     port map (
      Q(1) => t1,
      Q(0) => \x_sync_reg_n_0_[0]\,
      clk => clk,
      led(0) => led(1)
    );
u_perc_or: entity work.system_top_0_0_perceptron_0
     port map (
      Q(1) => t1,
      Q(0) => \x_sync_reg_n_0_[0]\,
      clk => clk,
      led(0) => led(0)
    );
u_perc_x0_and_not_x1: entity work.system_top_0_0_perceptron_1
     port map (
      Q(1) => t1,
      Q(0) => \x_sync_reg_n_0_[0]\,
      clk => clk,
      led(0) => led(2)
    );
\x_sync[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rstn,
      O => \x_sync[1]_i_1_n_0\
    );
\x_sync_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \x_sync[1]_i_1_n_0\,
      D => sw(0),
      Q => \x_sync_reg_n_0_[0]\
    );
\x_sync_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \x_sync[1]_i_1_n_0\,
      D => sw(1),
      Q => t1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_top_0_0 is
  port (
    clk : in STD_LOGIC;
    rstn : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mode : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_top_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_top_0_0 : entity is "system_top_0_0,top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_top_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_top_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_top_0_0 : entity is "top,Vivado 2020.1";
end system_top_0_0;

architecture STRUCTURE of system_top_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET rstn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rstn : signal is "xilinx.com:signal:reset:1.0 rstn RST";
  attribute X_INTERFACE_PARAMETER of rstn : signal is "XIL_INTERFACENAME rstn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.system_top_0_0_top
     port map (
      clk => clk,
      led(2 downto 0) => led(2 downto 0),
      rstn => rstn,
      sw(1 downto 0) => sw(1 downto 0)
    );
end STRUCTURE;
