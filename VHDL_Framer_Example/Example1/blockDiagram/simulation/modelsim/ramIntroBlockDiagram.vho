-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 11.1 Build 173 11/01/2011 SJ Web Edition"

-- DATE "04/29/2012 19:07:02"

-- 
-- Device: Altera EP4CGX22CF19C6 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
LIBRARY STD;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	dataValidation IS
    PORT (
	data_Valid : OUT std_logic;
	validOffset : OUT STD.STANDARD.integer;
	reset : IN std_logic;
	clock : IN std_logic;
	enable : IN std_logic;
	wr_ena : IN std_logic;
	ctrl_out : IN std_logic_vector(7 DOWNTO 0);
	ram_out : IN std_logic_vector(7 DOWNTO 0)
	);
END dataValidation;

-- Design Ports Information
-- data_Valid	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[0]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[1]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[3]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[5]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[6]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[7]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[8]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[9]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[10]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[11]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[12]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[13]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[14]	=>  Location: PIN_M17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[15]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[16]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[17]	=>  Location: PIN_U18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[18]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[19]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[20]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[21]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[22]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[23]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[24]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[25]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[26]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[27]	=>  Location: PIN_N17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[28]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[29]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[30]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- validOffset[31]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[0]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[1]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[2]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[3]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[4]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[6]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ram_out[7]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enable	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr_ena	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[0]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[3]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[2]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[5]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[4]	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ctrl_out[6]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF dataValidation IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_Valid : std_logic;
SIGNAL ww_validOffset : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_reset : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_wr_ena : std_logic;
SIGNAL ww_ctrl_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_ram_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~21_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~27_combout\ : std_logic;
SIGNAL \Add2~33_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~64_combout\ : std_logic;
SIGNAL \Add2~68_combout\ : std_logic;
SIGNAL \Add0~19_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~55_combout\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \mem~62_q\ : std_logic;
SIGNAL \mem~54_q\ : std_logic;
SIGNAL \mem~46_q\ : std_logic;
SIGNAL \mem~270_combout\ : std_logic;
SIGNAL \mem~70_q\ : std_logic;
SIGNAL \mem~271_combout\ : std_logic;
SIGNAL \mem~86_q\ : std_logic;
SIGNAL \mem~94_q\ : std_logic;
SIGNAL \mem~126_q\ : std_logic;
SIGNAL \mem~182_q\ : std_logic;
SIGNAL \mem~174_q\ : std_logic;
SIGNAL \mem~230_q\ : std_logic;
SIGNAL \mem~95_q\ : std_logic;
SIGNAL \mem~87_q\ : std_logic;
SIGNAL \mem~79_q\ : std_logic;
SIGNAL \mem~290_combout\ : std_logic;
SIGNAL \mem~103_q\ : std_logic;
SIGNAL \mem~291_combout\ : std_logic;
SIGNAL \mem~55_q\ : std_logic;
SIGNAL \mem~63_q\ : std_logic;
SIGNAL \mem~47_q\ : std_logic;
SIGNAL \mem~292_combout\ : std_logic;
SIGNAL \mem~71_q\ : std_logic;
SIGNAL \mem~293_combout\ : std_logic;
SIGNAL \mem~31_q\ : std_logic;
SIGNAL \mem~23_q\ : std_logic;
SIGNAL \mem~15_q\ : std_logic;
SIGNAL \mem~294_combout\ : std_logic;
SIGNAL \mem~39_q\ : std_logic;
SIGNAL \mem~295_combout\ : std_logic;
SIGNAL \mem~296_combout\ : std_logic;
SIGNAL \mem~119_q\ : std_logic;
SIGNAL \mem~127_q\ : std_logic;
SIGNAL \mem~111_q\ : std_logic;
SIGNAL \mem~297_combout\ : std_logic;
SIGNAL \mem~135_q\ : std_logic;
SIGNAL \mem~298_combout\ : std_logic;
SIGNAL \mem~299_combout\ : std_logic;
SIGNAL \mem~191_q\ : std_logic;
SIGNAL \mem~223_q\ : std_logic;
SIGNAL \mem~159_q\ : std_logic;
SIGNAL \mem~300_combout\ : std_logic;
SIGNAL \mem~255_q\ : std_logic;
SIGNAL \mem~301_combout\ : std_logic;
SIGNAL \mem~215_q\ : std_logic;
SIGNAL \mem~183_q\ : std_logic;
SIGNAL \mem~151_q\ : std_logic;
SIGNAL \mem~302_combout\ : std_logic;
SIGNAL \mem~247_q\ : std_logic;
SIGNAL \mem~303_combout\ : std_logic;
SIGNAL \mem~175_q\ : std_logic;
SIGNAL \mem~207_q\ : std_logic;
SIGNAL \mem~143_q\ : std_logic;
SIGNAL \mem~304_combout\ : std_logic;
SIGNAL \mem~239_q\ : std_logic;
SIGNAL \mem~305_combout\ : std_logic;
SIGNAL \mem~306_combout\ : std_logic;
SIGNAL \mem~231_q\ : std_logic;
SIGNAL \mem~199_q\ : std_logic;
SIGNAL \mem~167_q\ : std_logic;
SIGNAL \mem~307_combout\ : std_logic;
SIGNAL \mem~263_q\ : std_logic;
SIGNAL \mem~308_combout\ : std_logic;
SIGNAL \mem~309_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \mem~64_q\ : std_logic;
SIGNAL \mem~56_q\ : std_logic;
SIGNAL \mem~48_q\ : std_logic;
SIGNAL \mem~310_combout\ : std_logic;
SIGNAL \mem~72_q\ : std_logic;
SIGNAL \mem~311_combout\ : std_logic;
SIGNAL \mem~88_q\ : std_logic;
SIGNAL \mem~96_q\ : std_logic;
SIGNAL \mem~24_q\ : std_logic;
SIGNAL \mem~32_q\ : std_logic;
SIGNAL \mem~128_q\ : std_logic;
SIGNAL \mem~184_q\ : std_logic;
SIGNAL \mem~216_q\ : std_logic;
SIGNAL \mem~208_q\ : std_logic;
SIGNAL \mem~232_q\ : std_logic;
SIGNAL \mem~57_q\ : std_logic;
SIGNAL \mem~65_q\ : std_logic;
SIGNAL \mem~33_q\ : std_logic;
SIGNAL \mem~129_q\ : std_logic;
SIGNAL \mem~113_q\ : std_logic;
SIGNAL \mem~337_combout\ : std_logic;
SIGNAL \mem~217_q\ : std_logic;
SIGNAL \mem~185_q\ : std_logic;
SIGNAL \mem~177_q\ : std_logic;
SIGNAL \mem~209_q\ : std_logic;
SIGNAL \mem~145_q\ : std_logic;
SIGNAL \mem~344_combout\ : std_logic;
SIGNAL \mem~241_q\ : std_logic;
SIGNAL \mem~345_combout\ : std_logic;
SIGNAL \mem~233_q\ : std_logic;
SIGNAL \mem~201_q\ : std_logic;
SIGNAL \mem~169_q\ : std_logic;
SIGNAL \mem~347_combout\ : std_logic;
SIGNAL \mem~265_q\ : std_logic;
SIGNAL \mem~348_combout\ : std_logic;
SIGNAL \mem~66_q\ : std_logic;
SIGNAL \mem~58_q\ : std_logic;
SIGNAL \mem~90_q\ : std_logic;
SIGNAL \mem~98_q\ : std_logic;
SIGNAL \mem~26_q\ : std_logic;
SIGNAL \mem~122_q\ : std_logic;
SIGNAL \mem~114_q\ : std_logic;
SIGNAL \mem~357_combout\ : std_logic;
SIGNAL \mem~186_q\ : std_logic;
SIGNAL \mem~218_q\ : std_logic;
SIGNAL \mem~154_q\ : std_logic;
SIGNAL \mem~360_combout\ : std_logic;
SIGNAL \mem~250_q\ : std_logic;
SIGNAL \mem~361_combout\ : std_logic;
SIGNAL \mem~226_q\ : std_logic;
SIGNAL \mem~194_q\ : std_logic;
SIGNAL \mem~162_q\ : std_logic;
SIGNAL \mem~362_combout\ : std_logic;
SIGNAL \mem~258_q\ : std_logic;
SIGNAL \mem~363_combout\ : std_logic;
SIGNAL \mem~210_q\ : std_logic;
SIGNAL \mem~178_q\ : std_logic;
SIGNAL \mem~146_q\ : std_logic;
SIGNAL \mem~364_combout\ : std_logic;
SIGNAL \mem~242_q\ : std_logic;
SIGNAL \mem~365_combout\ : std_logic;
SIGNAL \mem~366_combout\ : std_logic;
SIGNAL \mem~202_q\ : std_logic;
SIGNAL \mem~234_q\ : std_logic;
SIGNAL \mem~170_q\ : std_logic;
SIGNAL \mem~367_combout\ : std_logic;
SIGNAL \mem~266_q\ : std_logic;
SIGNAL \mem~368_combout\ : std_logic;
SIGNAL \mem~369_combout\ : std_logic;
SIGNAL \mem~91_q\ : std_logic;
SIGNAL \mem~59_q\ : std_logic;
SIGNAL \mem~67_q\ : std_logic;
SIGNAL \mem~35_q\ : std_logic;
SIGNAL \mem~27_q\ : std_logic;
SIGNAL \mem~123_q\ : std_logic;
SIGNAL \mem~131_q\ : std_logic;
SIGNAL \mem~115_q\ : std_logic;
SIGNAL \mem~377_combout\ : std_logic;
SIGNAL \mem~139_q\ : std_logic;
SIGNAL \mem~378_combout\ : std_logic;
SIGNAL \mem~219_q\ : std_logic;
SIGNAL \mem~235_q\ : std_logic;
SIGNAL \mem~203_q\ : std_logic;
SIGNAL \mem~68_q\ : std_logic;
SIGNAL \mem~60_q\ : std_logic;
SIGNAL \mem~52_q\ : std_logic;
SIGNAL \mem~390_combout\ : std_logic;
SIGNAL \mem~76_q\ : std_logic;
SIGNAL \mem~391_combout\ : std_logic;
SIGNAL \mem~92_q\ : std_logic;
SIGNAL \mem~28_q\ : std_logic;
SIGNAL \mem~132_q\ : std_logic;
SIGNAL \mem~188_q\ : std_logic;
SIGNAL \mem~228_q\ : std_logic;
SIGNAL \mem~212_q\ : std_logic;
SIGNAL \mem~180_q\ : std_logic;
SIGNAL \mem~236_q\ : std_logic;
SIGNAL \mem~101_q\ : std_logic;
SIGNAL \mem~93_q\ : std_logic;
SIGNAL \mem~85_q\ : std_logic;
SIGNAL \mem~410_combout\ : std_logic;
SIGNAL \mem~109_q\ : std_logic;
SIGNAL \mem~411_combout\ : std_logic;
SIGNAL \mem~61_q\ : std_logic;
SIGNAL \mem~69_q\ : std_logic;
SIGNAL \mem~53_q\ : std_logic;
SIGNAL \mem~412_combout\ : std_logic;
SIGNAL \mem~77_q\ : std_logic;
SIGNAL \mem~413_combout\ : std_logic;
SIGNAL \mem~37_q\ : std_logic;
SIGNAL \mem~29_q\ : std_logic;
SIGNAL \mem~21_q\ : std_logic;
SIGNAL \mem~414_combout\ : std_logic;
SIGNAL \mem~45_q\ : std_logic;
SIGNAL \mem~415_combout\ : std_logic;
SIGNAL \mem~416_combout\ : std_logic;
SIGNAL \mem~125_q\ : std_logic;
SIGNAL \mem~133_q\ : std_logic;
SIGNAL \mem~117_q\ : std_logic;
SIGNAL \mem~417_combout\ : std_logic;
SIGNAL \mem~141_q\ : std_logic;
SIGNAL \mem~418_combout\ : std_logic;
SIGNAL \mem~419_combout\ : std_logic;
SIGNAL \mem~197_q\ : std_logic;
SIGNAL \mem~229_q\ : std_logic;
SIGNAL \mem~165_q\ : std_logic;
SIGNAL \mem~420_combout\ : std_logic;
SIGNAL \mem~261_q\ : std_logic;
SIGNAL \mem~421_combout\ : std_logic;
SIGNAL \mem~221_q\ : std_logic;
SIGNAL \mem~189_q\ : std_logic;
SIGNAL \mem~157_q\ : std_logic;
SIGNAL \mem~422_combout\ : std_logic;
SIGNAL \mem~253_q\ : std_logic;
SIGNAL \mem~423_combout\ : std_logic;
SIGNAL \mem~181_q\ : std_logic;
SIGNAL \mem~213_q\ : std_logic;
SIGNAL \mem~149_q\ : std_logic;
SIGNAL \mem~424_combout\ : std_logic;
SIGNAL \mem~245_q\ : std_logic;
SIGNAL \mem~425_combout\ : std_logic;
SIGNAL \mem~426_combout\ : std_logic;
SIGNAL \mem~237_q\ : std_logic;
SIGNAL \mem~205_q\ : std_logic;
SIGNAL \mem~173_q\ : std_logic;
SIGNAL \mem~427_combout\ : std_logic;
SIGNAL \mem~269_q\ : std_logic;
SIGNAL \mem~428_combout\ : std_logic;
SIGNAL \mem~429_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \mem~431_combout\ : std_logic;
SIGNAL \mem~433_combout\ : std_logic;
SIGNAL \mem~438_combout\ : std_logic;
SIGNAL \mem~440_combout\ : std_logic;
SIGNAL \mem~444_combout\ : std_logic;
SIGNAL \mem~475_combout\ : std_logic;
SIGNAL \ram_out2[1]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[3]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[2]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[5]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[7]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[7]~head_lut_combout\ : std_logic;
SIGNAL \ram_out2[6]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[6]~head_lut_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~23_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~29_combout\ : std_logic;
SIGNAL \Add2~35_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~83_combout\ : std_logic;
SIGNAL \Add2~84_combout\ : std_logic;
SIGNAL \Add2~86_combout\ : std_logic;
SIGNAL \Add2~90_combout\ : std_logic;
SIGNAL \Add2~92_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \ram_out2[1]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[3]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[2]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[5]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[7]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[6]~data_lut_combout\ : std_logic;
SIGNAL \Add0~73_combout\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Add0~82_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \ram_out2[7]~latch_combout\ : std_logic;
SIGNAL \ram_out2[6]~latch_combout\ : std_logic;
SIGNAL \ram_out[6]~input_o\ : std_logic;
SIGNAL \ram_out[7]~input_o\ : std_logic;
SIGNAL \wr_ena~input_o\ : std_logic;
SIGNAL \mem~215feeder_combout\ : std_logic;
SIGNAL \mem~119feeder_combout\ : std_logic;
SIGNAL \mem~191feeder_combout\ : std_logic;
SIGNAL \mem~23feeder_combout\ : std_logic;
SIGNAL \mem~87feeder_combout\ : std_logic;
SIGNAL \mem~183feeder_combout\ : std_logic;
SIGNAL \mem~55feeder_combout\ : std_logic;
SIGNAL \mem~126feeder_combout\ : std_logic;
SIGNAL \mem~62feeder_combout\ : std_logic;
SIGNAL \mem~230feeder_combout\ : std_logic;
SIGNAL \mem~182feeder_combout\ : std_logic;
SIGNAL \mem~54feeder_combout\ : std_logic;
SIGNAL \mem~33feeder_combout\ : std_logic;
SIGNAL \mem~201feeder_combout\ : std_logic;
SIGNAL \mem~217feeder_combout\ : std_logic;
SIGNAL \mem~209feeder_combout\ : std_logic;
SIGNAL \mem~185feeder_combout\ : std_logic;
SIGNAL \mem~57feeder_combout\ : std_logic;
SIGNAL \mem~65feeder_combout\ : std_logic;
SIGNAL \ram_in[3]~feeder_combout\ : std_logic;
SIGNAL \mem~232feeder_combout\ : std_logic;
SIGNAL \mem~35feeder_combout\ : std_logic;
SIGNAL \mem~123feeder_combout\ : std_logic;
SIGNAL \mem~131feeder_combout\ : std_logic;
SIGNAL \mem~203feeder_combout\ : std_logic;
SIGNAL \mem~219feeder_combout\ : std_logic;
SIGNAL \mem~66feeder_combout\ : std_logic;
SIGNAL \mem~202feeder_combout\ : std_logic;
SIGNAL \mem~218feeder_combout\ : std_logic;
SIGNAL \mem~122feeder_combout\ : std_logic;
SIGNAL \mem~178feeder_combout\ : std_logic;
SIGNAL \mem~194feeder_combout\ : std_logic;
SIGNAL \mem~210feeder_combout\ : std_logic;
SIGNAL \mem~226feeder_combout\ : std_logic;
SIGNAL \mem~186feeder_combout\ : std_logic;
SIGNAL \mem~58feeder_combout\ : std_logic;
SIGNAL \mem~221feeder_combout\ : std_logic;
SIGNAL \mem~133feeder_combout\ : std_logic;
SIGNAL \mem~125feeder_combout\ : std_logic;
SIGNAL \mem~189feeder_combout\ : std_logic;
SIGNAL \mem~61feeder_combout\ : std_logic;
SIGNAL \mem~69feeder_combout\ : std_logic;
SIGNAL \mem~212feeder_combout\ : std_logic;
SIGNAL \mem~228feeder_combout\ : std_logic;
SIGNAL \mem~180feeder_combout\ : std_logic;
SIGNAL \mem~60feeder_combout\ : std_logic;
SIGNAL \data_Valid~output_o\ : std_logic;
SIGNAL \validOffset[0]~output_o\ : std_logic;
SIGNAL \validOffset[1]~output_o\ : std_logic;
SIGNAL \validOffset[2]~output_o\ : std_logic;
SIGNAL \validOffset[3]~output_o\ : std_logic;
SIGNAL \validOffset[4]~output_o\ : std_logic;
SIGNAL \validOffset[5]~output_o\ : std_logic;
SIGNAL \validOffset[6]~output_o\ : std_logic;
SIGNAL \validOffset[7]~output_o\ : std_logic;
SIGNAL \validOffset[8]~output_o\ : std_logic;
SIGNAL \validOffset[9]~output_o\ : std_logic;
SIGNAL \validOffset[10]~output_o\ : std_logic;
SIGNAL \validOffset[11]~output_o\ : std_logic;
SIGNAL \validOffset[12]~output_o\ : std_logic;
SIGNAL \validOffset[13]~output_o\ : std_logic;
SIGNAL \validOffset[14]~output_o\ : std_logic;
SIGNAL \validOffset[15]~output_o\ : std_logic;
SIGNAL \validOffset[16]~output_o\ : std_logic;
SIGNAL \validOffset[17]~output_o\ : std_logic;
SIGNAL \validOffset[18]~output_o\ : std_logic;
SIGNAL \validOffset[19]~output_o\ : std_logic;
SIGNAL \validOffset[20]~output_o\ : std_logic;
SIGNAL \validOffset[21]~output_o\ : std_logic;
SIGNAL \validOffset[22]~output_o\ : std_logic;
SIGNAL \validOffset[23]~output_o\ : std_logic;
SIGNAL \validOffset[24]~output_o\ : std_logic;
SIGNAL \validOffset[25]~output_o\ : std_logic;
SIGNAL \validOffset[26]~output_o\ : std_logic;
SIGNAL \validOffset[27]~output_o\ : std_logic;
SIGNAL \validOffset[28]~output_o\ : std_logic;
SIGNAL \validOffset[29]~output_o\ : std_logic;
SIGNAL \validOffset[30]~output_o\ : std_logic;
SIGNAL \validOffset[31]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \ram_out[1]~input_o\ : std_logic;
SIGNAL \ram_out[0]~input_o\ : std_logic;
SIGNAL \ram_out2[0]~data_lut_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \ram_out2[0]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[0]~latch_combout\ : std_logic;
SIGNAL \ram_out2[0]~head_lut_combout\ : std_logic;
SIGNAL \ram_out2[1]~latch_combout\ : std_logic;
SIGNAL \ram_out2[1]~head_lut_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \ram_out[5]~input_o\ : std_logic;
SIGNAL \ram_out2[5]~latch_combout\ : std_logic;
SIGNAL \ram_out2[5]~head_lut_combout\ : std_logic;
SIGNAL \ram_out2[4]~latch_combout\ : std_logic;
SIGNAL \ram_out[4]~input_o\ : std_logic;
SIGNAL \ram_out2[4]~data_lut_combout\ : std_logic;
SIGNAL \ram_out2[4]~_emulated_q\ : std_logic;
SIGNAL \ram_out2[4]~head_lut_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \ram_out[2]~input_o\ : std_logic;
SIGNAL \ram_out2[2]~latch_combout\ : std_logic;
SIGNAL \ram_out2[2]~head_lut_combout\ : std_logic;
SIGNAL \ram_out[3]~input_o\ : std_logic;
SIGNAL \ram_out2[3]~latch_combout\ : std_logic;
SIGNAL \ram_out2[3]~head_lut_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \temp_addr2[0]~0_combout\ : std_logic;
SIGNAL \Add2~87_combout\ : std_logic;
SIGNAL \Add2~81_combout\ : std_logic;
SIGNAL \Add2~80_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~15_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~17_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~28\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39_combout\ : std_logic;
SIGNAL \Add2~41_combout\ : std_logic;
SIGNAL \Add2~40\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~79_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~82_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~85_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~63\ : std_logic;
SIGNAL \Add2~65\ : std_logic;
SIGNAL \Add2~66_combout\ : std_logic;
SIGNAL \Add2~91_combout\ : std_logic;
SIGNAL \Add2~67\ : std_logic;
SIGNAL \Add2~69\ : std_logic;
SIGNAL \Add2~70_combout\ : std_logic;
SIGNAL \Add2~93_combout\ : std_logic;
SIGNAL \Add2~71\ : std_logic;
SIGNAL \Add2~72_combout\ : std_logic;
SIGNAL \Add2~94_combout\ : std_logic;
SIGNAL \LessThan1~7_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~88_combout\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~89_combout\ : std_logic;
SIGNAL \LessThan1~6_combout\ : std_logic;
SIGNAL \LessThan1~8_combout\ : std_logic;
SIGNAL \Add2~73\ : std_logic;
SIGNAL \Add2~74_combout\ : std_logic;
SIGNAL \Add2~76_combout\ : std_logic;
SIGNAL \Add2~75\ : std_logic;
SIGNAL \Add2~77_combout\ : std_logic;
SIGNAL \Add2~97_combout\ : std_logic;
SIGNAL \LessThan1~9_combout\ : std_logic;
SIGNAL \Add2~78\ : std_logic;
SIGNAL \Add2~95_combout\ : std_logic;
SIGNAL \Add2~98_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \ctrl_out[4]~input_o\ : std_logic;
SIGNAL \ctrl_out[0]~input_o\ : std_logic;
SIGNAL \ctrl_out[1]~input_o\ : std_logic;
SIGNAL \ram_in[1]~feeder_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \ctrl_out[6]~input_o\ : std_logic;
SIGNAL \ctrl_out[7]~input_o\ : std_logic;
SIGNAL \ram_in[7]~feeder_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \ctrl_out[5]~input_o\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \Add0~85_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~8\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~20\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24\ : std_logic;
SIGNAL \Add0~25_combout\ : std_logic;
SIGNAL \Add0~76_combout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~79_combout\ : std_logic;
SIGNAL \Add0~32\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~44\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~88_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \Add0~91_combout\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Add0~48\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~56\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~94_combout\ : std_logic;
SIGNAL \Add0~60\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~62\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \mem~460_combout\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~97_combout\ : std_logic;
SIGNAL \Add0~66\ : std_logic;
SIGNAL \Add0~67_combout\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \Add0~68\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \mem~461_combout\ : std_logic;
SIGNAL \mem~138_q\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \mem~454_combout\ : std_logic;
SIGNAL \mem~455_combout\ : std_logic;
SIGNAL \mem~130_q\ : std_logic;
SIGNAL \mem~358_combout\ : std_logic;
SIGNAL \mem~434_combout\ : std_logic;
SIGNAL \mem~435_combout\ : std_logic;
SIGNAL \mem~50_q\ : std_logic;
SIGNAL \mem~350_combout\ : std_logic;
SIGNAL \mem~436_combout\ : std_logic;
SIGNAL \mem~437_combout\ : std_logic;
SIGNAL \mem~74_q\ : std_logic;
SIGNAL \mem~351_combout\ : std_logic;
SIGNAL \mem~453_combout\ : std_logic;
SIGNAL \mem~42_q\ : std_logic;
SIGNAL \mem~448_combout\ : std_logic;
SIGNAL \mem~449_combout\ : std_logic;
SIGNAL \mem~34_q\ : std_logic;
SIGNAL \mem~450_combout\ : std_logic;
SIGNAL \mem~451_combout\ : std_logic;
SIGNAL \mem~18_q\ : std_logic;
SIGNAL \mem~354_combout\ : std_logic;
SIGNAL \mem~355_combout\ : std_logic;
SIGNAL \mem~445_combout\ : std_logic;
SIGNAL \mem~106_q\ : std_logic;
SIGNAL \mem~442_combout\ : std_logic;
SIGNAL \mem~443_combout\ : std_logic;
SIGNAL \mem~82_q\ : std_logic;
SIGNAL \mem~352_combout\ : std_logic;
SIGNAL \mem~353_combout\ : std_logic;
SIGNAL \mem~356_combout\ : std_logic;
SIGNAL \mem~359_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \mem~99feeder_combout\ : std_logic;
SIGNAL \mem~441_combout\ : std_logic;
SIGNAL \mem~99_q\ : std_logic;
SIGNAL \mem~107_q\ : std_logic;
SIGNAL \mem~83_q\ : std_logic;
SIGNAL \mem~370_combout\ : std_logic;
SIGNAL \mem~371_combout\ : std_logic;
SIGNAL \mem~43_q\ : std_logic;
SIGNAL \mem~19_q\ : std_logic;
SIGNAL \mem~374_combout\ : std_logic;
SIGNAL \mem~375_combout\ : std_logic;
SIGNAL \mem~75_q\ : std_logic;
SIGNAL \mem~51_q\ : std_logic;
SIGNAL \mem~372_combout\ : std_logic;
SIGNAL \mem~373_combout\ : std_logic;
SIGNAL \mem~376_combout\ : std_logic;
SIGNAL \mem~379_combout\ : std_logic;
SIGNAL \mem~195feeder_combout\ : std_logic;
SIGNAL \mem~430_combout\ : std_logic;
SIGNAL \mem~467_combout\ : std_logic;
SIGNAL \mem~195_q\ : std_logic;
SIGNAL \mem~469_combout\ : std_logic;
SIGNAL \mem~259_q\ : std_logic;
SIGNAL \mem~466_combout\ : std_logic;
SIGNAL \mem~227_q\ : std_logic;
SIGNAL \mem~468_combout\ : std_logic;
SIGNAL \mem~163_q\ : std_logic;
SIGNAL \mem~380_combout\ : std_logic;
SIGNAL \mem~381_combout\ : std_logic;
SIGNAL \mem~179feeder_combout\ : std_logic;
SIGNAL \mem~471_combout\ : std_logic;
SIGNAL \mem~179_q\ : std_logic;
SIGNAL \mem~458_combout\ : std_logic;
SIGNAL \mem~473_combout\ : std_logic;
SIGNAL \mem~243_q\ : std_logic;
SIGNAL \mem~472_combout\ : std_logic;
SIGNAL \mem~147_q\ : std_logic;
SIGNAL \mem~470_combout\ : std_logic;
SIGNAL \mem~211_q\ : std_logic;
SIGNAL \mem~384_combout\ : std_logic;
SIGNAL \mem~385_combout\ : std_logic;
SIGNAL \mem~456_combout\ : std_logic;
SIGNAL \mem~465_combout\ : std_logic;
SIGNAL \mem~251_q\ : std_logic;
SIGNAL \mem~432_combout\ : std_logic;
SIGNAL \mem~462_combout\ : std_logic;
SIGNAL \mem~187_q\ : std_logic;
SIGNAL \mem~446_combout\ : std_logic;
SIGNAL \mem~464_combout\ : std_logic;
SIGNAL \mem~155_q\ : std_logic;
SIGNAL \mem~382_combout\ : std_logic;
SIGNAL \mem~383_combout\ : std_logic;
SIGNAL \mem~386_combout\ : std_logic;
SIGNAL \mem~477_combout\ : std_logic;
SIGNAL \mem~267_q\ : std_logic;
SIGNAL \mem~452_combout\ : std_logic;
SIGNAL \mem~476_combout\ : std_logic;
SIGNAL \mem~171_q\ : std_logic;
SIGNAL \mem~387_combout\ : std_logic;
SIGNAL \mem~388_combout\ : std_logic;
SIGNAL \mem~389_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \mem~108_q\ : std_logic;
SIGNAL \mem~84_q\ : std_logic;
SIGNAL \mem~100feeder_combout\ : std_logic;
SIGNAL \mem~100_q\ : std_logic;
SIGNAL \mem~392_combout\ : std_logic;
SIGNAL \mem~393_combout\ : std_logic;
SIGNAL \mem~44_q\ : std_logic;
SIGNAL \mem~36feeder_combout\ : std_logic;
SIGNAL \mem~36_q\ : std_logic;
SIGNAL \mem~20_q\ : std_logic;
SIGNAL \mem~394_combout\ : std_logic;
SIGNAL \mem~395_combout\ : std_logic;
SIGNAL \mem~396_combout\ : std_logic;
SIGNAL \mem~140_q\ : std_logic;
SIGNAL \mem~459_combout\ : std_logic;
SIGNAL \mem~116_q\ : std_logic;
SIGNAL \mem~457_combout\ : std_logic;
SIGNAL \mem~124_q\ : std_logic;
SIGNAL \mem~397_combout\ : std_logic;
SIGNAL \mem~398_combout\ : std_logic;
SIGNAL \mem~399_combout\ : std_logic;
SIGNAL \mem~252_q\ : std_logic;
SIGNAL \mem~463_combout\ : std_logic;
SIGNAL \mem~220_q\ : std_logic;
SIGNAL \mem~156_q\ : std_logic;
SIGNAL \mem~400_combout\ : std_logic;
SIGNAL \mem~401_combout\ : std_logic;
SIGNAL \mem~244_q\ : std_logic;
SIGNAL \mem~148_q\ : std_logic;
SIGNAL \mem~404_combout\ : std_logic;
SIGNAL \mem~405_combout\ : std_logic;
SIGNAL \mem~260_q\ : std_logic;
SIGNAL \mem~196feeder_combout\ : std_logic;
SIGNAL \mem~196_q\ : std_logic;
SIGNAL \mem~164_q\ : std_logic;
SIGNAL \mem~402_combout\ : std_logic;
SIGNAL \mem~403_combout\ : std_logic;
SIGNAL \mem~406_combout\ : std_logic;
SIGNAL \mem~474_combout\ : std_logic;
SIGNAL \mem~204_q\ : std_logic;
SIGNAL \mem~268_q\ : std_logic;
SIGNAL \mem~172_q\ : std_logic;
SIGNAL \mem~407_combout\ : std_logic;
SIGNAL \mem~408_combout\ : std_logic;
SIGNAL \mem~409_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \temp_addr2[0]~1_combout\ : std_logic;
SIGNAL \LessThan1~10_combout\ : std_logic;
SIGNAL \temp_addr2[4]~2_combout\ : std_logic;
SIGNAL \ctrl_out[3]~input_o\ : std_logic;
SIGNAL \mem~249_q\ : std_logic;
SIGNAL \mem~153_q\ : std_logic;
SIGNAL \mem~342_combout\ : std_logic;
SIGNAL \mem~343_combout\ : std_logic;
SIGNAL \mem~346_combout\ : std_logic;
SIGNAL \mem~193feeder_combout\ : std_logic;
SIGNAL \mem~193_q\ : std_logic;
SIGNAL \mem~257_q\ : std_logic;
SIGNAL \mem~225feeder_combout\ : std_logic;
SIGNAL \mem~225_q\ : std_logic;
SIGNAL \mem~161_q\ : std_logic;
SIGNAL \mem~340_combout\ : std_logic;
SIGNAL \mem~341_combout\ : std_logic;
SIGNAL \mem~349_combout\ : std_logic;
SIGNAL \mem~137_q\ : std_logic;
SIGNAL \mem~121feeder_combout\ : std_logic;
SIGNAL \mem~121_q\ : std_logic;
SIGNAL \mem~338_combout\ : std_logic;
SIGNAL \mem~97feeder_combout\ : std_logic;
SIGNAL \mem~97_q\ : std_logic;
SIGNAL \mem~105_q\ : std_logic;
SIGNAL \mem~89feeder_combout\ : std_logic;
SIGNAL \mem~439_combout\ : std_logic;
SIGNAL \mem~89_q\ : std_logic;
SIGNAL \mem~81_q\ : std_logic;
SIGNAL \mem~330_combout\ : std_logic;
SIGNAL \mem~331_combout\ : std_logic;
SIGNAL \mem~73_q\ : std_logic;
SIGNAL \mem~49_q\ : std_logic;
SIGNAL \mem~332_combout\ : std_logic;
SIGNAL \mem~333_combout\ : std_logic;
SIGNAL \mem~41_q\ : std_logic;
SIGNAL \mem~25feeder_combout\ : std_logic;
SIGNAL \mem~447_combout\ : std_logic;
SIGNAL \mem~25_q\ : std_logic;
SIGNAL \mem~17_q\ : std_logic;
SIGNAL \mem~334_combout\ : std_logic;
SIGNAL \mem~335_combout\ : std_logic;
SIGNAL \mem~336_combout\ : std_logic;
SIGNAL \mem~339_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \ctrl_out[2]~input_o\ : std_logic;
SIGNAL \mem~40_q\ : std_logic;
SIGNAL \mem~16_q\ : std_logic;
SIGNAL \mem~314_combout\ : std_logic;
SIGNAL \mem~315_combout\ : std_logic;
SIGNAL \mem~104_q\ : std_logic;
SIGNAL \mem~80_q\ : std_logic;
SIGNAL \mem~312_combout\ : std_logic;
SIGNAL \mem~313_combout\ : std_logic;
SIGNAL \mem~316_combout\ : std_logic;
SIGNAL \mem~136_q\ : std_logic;
SIGNAL \mem~112_q\ : std_logic;
SIGNAL \mem~120_q\ : std_logic;
SIGNAL \mem~317_combout\ : std_logic;
SIGNAL \mem~318_combout\ : std_logic;
SIGNAL \mem~319_combout\ : std_logic;
SIGNAL \mem~152_q\ : std_logic;
SIGNAL \mem~320_combout\ : std_logic;
SIGNAL \mem~248_q\ : std_logic;
SIGNAL \mem~321_combout\ : std_logic;
SIGNAL \mem~200feeder_combout\ : std_logic;
SIGNAL \mem~200_q\ : std_logic;
SIGNAL \mem~264_q\ : std_logic;
SIGNAL \mem~168_q\ : std_logic;
SIGNAL \mem~327_combout\ : std_logic;
SIGNAL \mem~328_combout\ : std_logic;
SIGNAL \mem~240_q\ : std_logic;
SIGNAL \mem~176_q\ : std_logic;
SIGNAL \mem~144_q\ : std_logic;
SIGNAL \mem~324_combout\ : std_logic;
SIGNAL \mem~325_combout\ : std_logic;
SIGNAL \mem~224_q\ : std_logic;
SIGNAL \mem~256_q\ : std_logic;
SIGNAL \mem~192feeder_combout\ : std_logic;
SIGNAL \mem~192_q\ : std_logic;
SIGNAL \mem~160_q\ : std_logic;
SIGNAL \mem~322_combout\ : std_logic;
SIGNAL \mem~323_combout\ : std_logic;
SIGNAL \mem~326_combout\ : std_logic;
SIGNAL \mem~329_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \mem~134_q\ : std_logic;
SIGNAL \mem~110_q\ : std_logic;
SIGNAL \mem~118feeder_combout\ : std_logic;
SIGNAL \mem~118_q\ : std_logic;
SIGNAL \mem~277_combout\ : std_logic;
SIGNAL \mem~278_combout\ : std_logic;
SIGNAL \mem~102_q\ : std_logic;
SIGNAL \mem~78_q\ : std_logic;
SIGNAL \mem~272_combout\ : std_logic;
SIGNAL \mem~273_combout\ : std_logic;
SIGNAL \mem~22_q\ : std_logic;
SIGNAL \mem~38_q\ : std_logic;
SIGNAL \mem~30_q\ : std_logic;
SIGNAL \mem~14_q\ : std_logic;
SIGNAL \mem~274_combout\ : std_logic;
SIGNAL \mem~275_combout\ : std_logic;
SIGNAL \mem~276_combout\ : std_logic;
SIGNAL \mem~279_combout\ : std_logic;
SIGNAL \mem~206feeder_combout\ : std_logic;
SIGNAL \mem~206_q\ : std_logic;
SIGNAL \mem~238_q\ : std_logic;
SIGNAL \mem~142_q\ : std_logic;
SIGNAL \mem~284_combout\ : std_logic;
SIGNAL \mem~285_combout\ : std_logic;
SIGNAL \mem~222feeder_combout\ : std_logic;
SIGNAL \mem~222_q\ : std_logic;
SIGNAL \mem~254_q\ : std_logic;
SIGNAL \mem~190feeder_combout\ : std_logic;
SIGNAL \mem~190_q\ : std_logic;
SIGNAL \mem~158_q\ : std_logic;
SIGNAL \mem~282_combout\ : std_logic;
SIGNAL \mem~283_combout\ : std_logic;
SIGNAL \mem~286_combout\ : std_logic;
SIGNAL \mem~198feeder_combout\ : std_logic;
SIGNAL \mem~198_q\ : std_logic;
SIGNAL \mem~262_q\ : std_logic;
SIGNAL \mem~166_q\ : std_logic;
SIGNAL \mem~287_combout\ : std_logic;
SIGNAL \mem~288_combout\ : std_logic;
SIGNAL \mem~246_q\ : std_logic;
SIGNAL \mem~214feeder_combout\ : std_logic;
SIGNAL \mem~214_q\ : std_logic;
SIGNAL \mem~150_q\ : std_logic;
SIGNAL \mem~280_combout\ : std_logic;
SIGNAL \mem~281_combout\ : std_logic;
SIGNAL \mem~289_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \S_data_Valid~q\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3_combout\ : std_logic;
SIGNAL \Add1~5_combout\ : std_logic;
SIGNAL \Add1~4\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9_combout\ : std_logic;
SIGNAL \Add1~11_combout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15_combout\ : std_logic;
SIGNAL \Add1~17_combout\ : std_logic;
SIGNAL \Add1~16\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~21_combout\ : std_logic;
SIGNAL \Add1~23_combout\ : std_logic;
SIGNAL \Add1~22\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~27_combout\ : std_logic;
SIGNAL \Add1~29_combout\ : std_logic;
SIGNAL \Add1~28\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~33_combout\ : std_logic;
SIGNAL \Add1~35_combout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~39_combout\ : std_logic;
SIGNAL \Add1~41_combout\ : std_logic;
SIGNAL \Add1~40\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~45_combout\ : std_logic;
SIGNAL \Add1~47_combout\ : std_logic;
SIGNAL \Add1~46\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~51_combout\ : std_logic;
SIGNAL \Add1~53_combout\ : std_logic;
SIGNAL \Add1~52\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~57_combout\ : std_logic;
SIGNAL \Add1~59_combout\ : std_logic;
SIGNAL \Add1~58\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~63_combout\ : std_logic;
SIGNAL \Add1~65_combout\ : std_logic;
SIGNAL \Add1~64\ : std_logic;
SIGNAL \Add1~66_combout\ : std_logic;
SIGNAL \Add1~68_combout\ : std_logic;
SIGNAL \Add1~67\ : std_logic;
SIGNAL \Add1~69_combout\ : std_logic;
SIGNAL \Add1~71_combout\ : std_logic;
SIGNAL \Add1~70\ : std_logic;
SIGNAL \Add1~72_combout\ : std_logic;
SIGNAL \Add1~74_combout\ : std_logic;
SIGNAL \Add1~73\ : std_logic;
SIGNAL \Add1~75_combout\ : std_logic;
SIGNAL \Add1~77_combout\ : std_logic;
SIGNAL \Add1~76\ : std_logic;
SIGNAL \Add1~78_combout\ : std_logic;
SIGNAL \Add1~80_combout\ : std_logic;
SIGNAL \Add1~79\ : std_logic;
SIGNAL \Add1~81_combout\ : std_logic;
SIGNAL \Add1~83_combout\ : std_logic;
SIGNAL \Add1~82\ : std_logic;
SIGNAL \Add1~84_combout\ : std_logic;
SIGNAL \Add1~86_combout\ : std_logic;
SIGNAL \Add1~85\ : std_logic;
SIGNAL \Add1~87_combout\ : std_logic;
SIGNAL \Add1~89_combout\ : std_logic;
SIGNAL \Add1~88\ : std_logic;
SIGNAL \Add1~90_combout\ : std_logic;
SIGNAL \Add1~92_combout\ : std_logic;
SIGNAL \Add1~91\ : std_logic;
SIGNAL \Add1~93_combout\ : std_logic;
SIGNAL \Add1~95_combout\ : std_logic;
SIGNAL S_validOffset : std_logic_vector(31 DOWNTO 0);
SIGNAL ram_in : std_logic_vector(7 DOWNTO 0);
SIGNAL temp_addr : std_logic_vector(31 DOWNTO 0);
SIGNAL temp_addr2 : std_logic_vector(31 DOWNTO 0);

BEGIN

data_Valid <= ww_data_Valid;
validOffset <= IEEE.STD_LOGIC_ARITH.CONV_INTEGER(UNSIGNED(ww_validOffset));
ww_reset <= reset;
ww_clock <= clock;
ww_enable <= enable;
ww_wr_ena <= wr_ena;
ww_ctrl_out <= ctrl_out;
ww_ram_out <= ram_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);

-- Location: LCCOMB_X26_Y33_N8
\Add2~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (temp_addr2(4) & (\Add2~11\ $ (GND))) # (!temp_addr2(4) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((temp_addr2(4) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(4),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X26_Y33_N10
\Add2~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (temp_addr2(5) & (!\Add2~13\)) # (!temp_addr2(5) & ((\Add2~13\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~13\) # (!temp_addr2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(5),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X26_Y33_N12
\Add2~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~21_combout\ = (temp_addr2(6) & (\Add2~19\ $ (GND))) # (!temp_addr2(6) & (!\Add2~19\ & VCC))
-- \Add2~22\ = CARRY((temp_addr2(6) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(6),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~21_combout\,
	cout => \Add2~22\);

-- Location: LCCOMB_X26_Y33_N14
\Add2~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (temp_addr2(7) & (!\Add2~22\)) # (!temp_addr2(7) & ((\Add2~22\) # (GND)))
-- \Add2~25\ = CARRY((!\Add2~22\) # (!temp_addr2(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(7),
	datad => VCC,
	cin => \Add2~22\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X26_Y33_N16
\Add2~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~27_combout\ = (temp_addr2(8) & (\Add2~25\ $ (GND))) # (!temp_addr2(8) & (!\Add2~25\ & VCC))
-- \Add2~28\ = CARRY((temp_addr2(8) & !\Add2~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(8),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~27_combout\,
	cout => \Add2~28\);

-- Location: LCCOMB_X26_Y33_N20
\Add2~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~33_combout\ = (temp_addr2(10) & (\Add2~31\ $ (GND))) # (!temp_addr2(10) & (!\Add2~31\ & VCC))
-- \Add2~34\ = CARRY((temp_addr2(10) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(10),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~33_combout\,
	cout => \Add2~34\);

-- Location: LCCOMB_X26_Y33_N22
\Add2~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (temp_addr2(11) & (!\Add2~34\)) # (!temp_addr2(11) & ((\Add2~34\) # (GND)))
-- \Add2~37\ = CARRY((!\Add2~34\) # (!temp_addr2(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(11),
	datad => VCC,
	cin => \Add2~34\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X26_Y33_N28
\Add2~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (temp_addr2(14) & (\Add2~43\ $ (GND))) # (!temp_addr2(14) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((temp_addr2(14) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(14),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X26_Y33_N30
\Add2~46\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (temp_addr2(15) & (!\Add2~45\)) # (!temp_addr2(15) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!temp_addr2(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(15),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X26_Y32_N2
\Add2~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (temp_addr2(17) & (!\Add2~49\)) # (!temp_addr2(17) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!temp_addr2(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(17),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X26_Y32_N4
\Add2~52\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (temp_addr2(18) & (\Add2~51\ $ (GND))) # (!temp_addr2(18) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((temp_addr2(18) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(18),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X26_Y32_N8
\Add2~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (temp_addr2(20) & (\Add2~55\ $ (GND))) # (!temp_addr2(20) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((temp_addr2(20) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(20),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X26_Y32_N10
\Add2~58\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (temp_addr2(21) & (!\Add2~57\)) # (!temp_addr2(21) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!temp_addr2(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(21),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X26_Y32_N16
\Add2~64\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~64_combout\ = (temp_addr2(24) & (\Add2~63\ $ (GND))) # (!temp_addr2(24) & (!\Add2~63\ & VCC))
-- \Add2~65\ = CARRY((temp_addr2(24) & !\Add2~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(24),
	datad => VCC,
	cin => \Add2~63\,
	combout => \Add2~64_combout\,
	cout => \Add2~65\);

-- Location: LCCOMB_X26_Y32_N20
\Add2~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~68_combout\ = (temp_addr2(26) & (\Add2~67\ $ (GND))) # (!temp_addr2(26) & (!\Add2~67\ & VCC))
-- \Add2~69\ = CARRY((temp_addr2(26) & !\Add2~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(26),
	datad => VCC,
	cin => \Add2~67\,
	combout => \Add2~68_combout\,
	cout => \Add2~69\);

-- Location: LCCOMB_X24_Y34_N10
\Add0~19\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~19_combout\ = (temp_addr(5) & (!\Add0~17\)) # (!temp_addr(5) & ((\Add0~17\) # (GND)))
-- \Add0~20\ = CARRY((!\Add0~17\) # (!temp_addr(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(5),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~19_combout\,
	cout => \Add0~20\);

-- Location: LCCOMB_X24_Y34_N14
\Add0~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = (temp_addr(7) & (!\Add0~22\)) # (!temp_addr(7) & ((\Add0~22\) # (GND)))
-- \Add0~24\ = CARRY((!\Add0~22\) # (!temp_addr(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(7),
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~23_combout\,
	cout => \Add0~24\);

-- Location: LCCOMB_X24_Y34_N20
\Add0~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (temp_addr(10) & (\Add0~28\ $ (GND))) # (!temp_addr(10) & (!\Add0~28\ & VCC))
-- \Add0~30\ = CARRY((temp_addr(10) & !\Add0~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(10),
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X24_Y34_N26
\Add0~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = (temp_addr(13) & (!\Add0~34\)) # (!temp_addr(13) & ((\Add0~34\) # (GND)))
-- \Add0~36\ = CARRY((!\Add0~34\) # (!temp_addr(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(13),
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~35_combout\,
	cout => \Add0~36\);

-- Location: LCCOMB_X24_Y34_N28
\Add0~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (temp_addr(14) & (\Add0~36\ $ (GND))) # (!temp_addr(14) & (!\Add0~36\ & VCC))
-- \Add0~38\ = CARRY((temp_addr(14) & !\Add0~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(14),
	datad => VCC,
	cin => \Add0~36\,
	combout => \Add0~37_combout\,
	cout => \Add0~38\);

-- Location: LCCOMB_X24_Y34_N30
\Add0~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (temp_addr(15) & (!\Add0~38\)) # (!temp_addr(15) & ((\Add0~38\) # (GND)))
-- \Add0~40\ = CARRY((!\Add0~38\) # (!temp_addr(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(15),
	datad => VCC,
	cin => \Add0~38\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X24_Y33_N0
\Add0~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (temp_addr(16) & (\Add0~40\ $ (GND))) # (!temp_addr(16) & (!\Add0~40\ & VCC))
-- \Add0~42\ = CARRY((temp_addr(16) & !\Add0~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(16),
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~41_combout\,
	cout => \Add0~42\);

-- Location: LCCOMB_X24_Y33_N2
\Add0~43\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = (temp_addr(17) & (!\Add0~42\)) # (!temp_addr(17) & ((\Add0~42\) # (GND)))
-- \Add0~44\ = CARRY((!\Add0~42\) # (!temp_addr(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(17),
	datad => VCC,
	cin => \Add0~42\,
	combout => \Add0~43_combout\,
	cout => \Add0~44\);

-- Location: LCCOMB_X24_Y33_N8
\Add0~49\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (temp_addr(20) & (\Add0~48\ $ (GND))) # (!temp_addr(20) & (!\Add0~48\ & VCC))
-- \Add0~50\ = CARRY((temp_addr(20) & !\Add0~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(20),
	datad => VCC,
	cin => \Add0~48\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X24_Y33_N10
\Add0~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (temp_addr(21) & (!\Add0~50\)) # (!temp_addr(21) & ((\Add0~50\) # (GND)))
-- \Add0~52\ = CARRY((!\Add0~50\) # (!temp_addr(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(21),
	datad => VCC,
	cin => \Add0~50\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X24_Y33_N12
\Add0~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = (temp_addr(22) & (\Add0~52\ $ (GND))) # (!temp_addr(22) & (!\Add0~52\ & VCC))
-- \Add0~54\ = CARRY((temp_addr(22) & !\Add0~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(22),
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~53_combout\,
	cout => \Add0~54\);

-- Location: LCCOMB_X24_Y33_N14
\Add0~55\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~55_combout\ = (temp_addr(23) & (!\Add0~54\)) # (!temp_addr(23) & ((\Add0~54\) # (GND)))
-- \Add0~56\ = CARRY((!\Add0~54\) # (!temp_addr(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(23),
	datad => VCC,
	cin => \Add0~54\,
	combout => \Add0~55_combout\,
	cout => \Add0~56\);

-- Location: LCCOMB_X24_Y33_N28
\Add0~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = (temp_addr(30) & (\Add0~68\ $ (GND))) # (!temp_addr(30) & (!\Add0~68\ & VCC))
-- \Add0~70\ = CARRY((temp_addr(30) & !\Add0~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(30),
	datad => VCC,
	cin => \Add0~68\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: FF_X25_Y28_N9
\mem~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~62feeder_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~62_q\);

-- Location: FF_X23_Y28_N17
\mem~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~54feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~54_q\);

-- Location: FF_X26_Y28_N25
\mem~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~46_q\);

-- Location: LCCOMB_X26_Y28_N24
\mem~270\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~270_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~54_q\)) # (!temp_addr2(0) & ((\mem~46_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~54_q\,
	datab => temp_addr2(1),
	datac => \mem~46_q\,
	datad => temp_addr2(0),
	combout => \mem~270_combout\);

-- Location: FF_X26_Y28_N3
\mem~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~70_q\);

-- Location: LCCOMB_X26_Y28_N2
\mem~271\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~271_combout\ = (temp_addr2(1) & ((\mem~270_combout\ & ((\mem~70_q\))) # (!\mem~270_combout\ & (\mem~62_q\)))) # (!temp_addr2(1) & (((\mem~270_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~62_q\,
	datab => temp_addr2(1),
	datac => \mem~70_q\,
	datad => \mem~270_combout\,
	combout => \mem~271_combout\);

-- Location: FF_X25_Y27_N9
\mem~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~86_q\);

-- Location: FF_X27_Y27_N25
\mem~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~94_q\);

-- Location: FF_X26_Y31_N1
\mem~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~126feeder_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~126_q\);

-- Location: FF_X23_Y28_N11
\mem~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~182feeder_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~182_q\);

-- Location: FF_X28_Y30_N1
\mem~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~174_q\);

-- Location: FF_X23_Y30_N25
\mem~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~230feeder_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~230_q\);

-- Location: FF_X27_Y27_N29
\mem~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~95_q\);

-- Location: FF_X25_Y27_N5
\mem~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~87feeder_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~87_q\);

-- Location: FF_X28_Y27_N21
\mem~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~79_q\);

-- Location: LCCOMB_X28_Y27_N20
\mem~290\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~290_combout\ = (temp_addr2(0) & ((\mem~87_q\) # ((temp_addr2(1))))) # (!temp_addr2(0) & (((\mem~79_q\ & !temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~87_q\,
	datab => temp_addr2(0),
	datac => \mem~79_q\,
	datad => temp_addr2(1),
	combout => \mem~290_combout\);

-- Location: FF_X28_Y27_N23
\mem~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~103_q\);

-- Location: LCCOMB_X28_Y27_N22
\mem~291\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~291_combout\ = (temp_addr2(1) & ((\mem~290_combout\ & ((\mem~103_q\))) # (!\mem~290_combout\ & (\mem~95_q\)))) # (!temp_addr2(1) & (((\mem~290_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~95_q\,
	datac => \mem~103_q\,
	datad => \mem~290_combout\,
	combout => \mem~291_combout\);

-- Location: FF_X23_Y28_N29
\mem~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~55feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~55_q\);

-- Location: FF_X25_Y28_N3
\mem~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~63_q\);

-- Location: FF_X26_Y28_N29
\mem~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~47_q\);

-- Location: LCCOMB_X26_Y28_N28
\mem~292\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~292_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~63_q\)) # (!temp_addr2(1) & ((\mem~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~63_q\,
	datab => temp_addr2(0),
	datac => \mem~47_q\,
	datad => temp_addr2(1),
	combout => \mem~292_combout\);

-- Location: FF_X26_Y28_N23
\mem~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~71_q\);

-- Location: LCCOMB_X26_Y28_N22
\mem~293\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~293_combout\ = (temp_addr2(0) & ((\mem~292_combout\ & ((\mem~71_q\))) # (!\mem~292_combout\ & (\mem~55_q\)))) # (!temp_addr2(0) & (((\mem~292_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~55_q\,
	datac => \mem~71_q\,
	datad => \mem~292_combout\,
	combout => \mem~293_combout\);

-- Location: FF_X27_Y27_N7
\mem~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~31_q\);

-- Location: FF_X25_Y27_N15
\mem~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~23feeder_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~23_q\);

-- Location: FF_X26_Y27_N29
\mem~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~15_q\);

-- Location: LCCOMB_X26_Y27_N28
\mem~294\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~294_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~23_q\)) # (!temp_addr2(0) & ((\mem~15_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~23_q\,
	datab => temp_addr2(1),
	datac => \mem~15_q\,
	datad => temp_addr2(0),
	combout => \mem~294_combout\);

-- Location: FF_X26_Y27_N7
\mem~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~39_q\);

-- Location: LCCOMB_X26_Y27_N6
\mem~295\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~295_combout\ = (temp_addr2(1) & ((\mem~294_combout\ & ((\mem~39_q\))) # (!\mem~294_combout\ & (\mem~31_q\)))) # (!temp_addr2(1) & (((\mem~294_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~31_q\,
	datab => temp_addr2(1),
	datac => \mem~39_q\,
	datad => \mem~294_combout\,
	combout => \mem~295_combout\);

-- Location: LCCOMB_X25_Y30_N24
\mem~296\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~296_combout\ = (temp_addr2(2) & ((temp_addr2(3)) # ((\mem~293_combout\)))) # (!temp_addr2(2) & (!temp_addr2(3) & ((\mem~295_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~293_combout\,
	datad => \mem~295_combout\,
	combout => \mem~296_combout\);

-- Location: FF_X25_Y31_N3
\mem~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~119feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~119_q\);

-- Location: FF_X26_Y31_N21
\mem~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~127_q\);

-- Location: FF_X27_Y31_N9
\mem~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~111_q\);

-- Location: LCCOMB_X27_Y31_N8
\mem~297\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~297_combout\ = (temp_addr2(0) & (temp_addr2(1))) # (!temp_addr2(0) & ((temp_addr2(1) & ((\mem~127_q\))) # (!temp_addr2(1) & (\mem~111_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~111_q\,
	datad => \mem~127_q\,
	combout => \mem~297_combout\);

-- Location: FF_X26_Y31_N31
\mem~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~135_q\);

-- Location: LCCOMB_X26_Y31_N30
\mem~298\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~298_combout\ = (\mem~297_combout\ & (((\mem~135_q\) # (!temp_addr2(0))))) # (!\mem~297_combout\ & (\mem~119_q\ & ((temp_addr2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~119_q\,
	datab => \mem~297_combout\,
	datac => \mem~135_q\,
	datad => temp_addr2(0),
	combout => \mem~298_combout\);

-- Location: LCCOMB_X25_Y30_N2
\mem~299\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~299_combout\ = (temp_addr2(3) & ((\mem~296_combout\ & ((\mem~298_combout\))) # (!\mem~296_combout\ & (\mem~291_combout\)))) # (!temp_addr2(3) & (((\mem~296_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~291_combout\,
	datab => temp_addr2(3),
	datac => \mem~298_combout\,
	datad => \mem~296_combout\,
	combout => \mem~299_combout\);

-- Location: FF_X29_Y29_N19
\mem~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~191feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~191_q\);

-- Location: FF_X28_Y28_N13
\mem~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~223_q\);

-- Location: FF_X28_Y29_N13
\mem~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~159_q\);

-- Location: LCCOMB_X28_Y29_N12
\mem~300\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~300_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~223_q\)) # (!temp_addr2(3) & ((\mem~159_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~223_q\,
	datab => temp_addr2(2),
	datac => \mem~159_q\,
	datad => temp_addr2(3),
	combout => \mem~300_combout\);

-- Location: FF_X28_Y29_N23
\mem~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~255_q\);

-- Location: LCCOMB_X28_Y29_N22
\mem~301\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~301_combout\ = (temp_addr2(2) & ((\mem~300_combout\ & ((\mem~255_q\))) # (!\mem~300_combout\ & (\mem~191_q\)))) # (!temp_addr2(2) & (((\mem~300_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~191_q\,
	datac => \mem~255_q\,
	datad => \mem~300_combout\,
	combout => \mem~301_combout\);

-- Location: FF_X24_Y29_N27
\mem~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~215feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~215_q\);

-- Location: FF_X23_Y28_N31
\mem~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~183feeder_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~183_q\);

-- Location: FF_X24_Y28_N11
\mem~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~151_q\);

-- Location: LCCOMB_X24_Y28_N10
\mem~302\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~302_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~183_q\)) # (!temp_addr2(2) & ((\mem~151_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~183_q\,
	datac => \mem~151_q\,
	datad => temp_addr2(2),
	combout => \mem~302_combout\);

-- Location: FF_X24_Y28_N29
\mem~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~247_q\);

-- Location: LCCOMB_X24_Y28_N28
\mem~303\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~303_combout\ = (temp_addr2(3) & ((\mem~302_combout\ & ((\mem~247_q\))) # (!\mem~302_combout\ & (\mem~215_q\)))) # (!temp_addr2(3) & (((\mem~302_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~215_q\,
	datab => temp_addr2(3),
	datac => \mem~247_q\,
	datad => \mem~302_combout\,
	combout => \mem~303_combout\);

-- Location: FF_X28_Y30_N19
\mem~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~175_q\);

-- Location: FF_X28_Y28_N23
\mem~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~207_q\);

-- Location: FF_X25_Y30_N13
\mem~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~143_q\);

-- Location: LCCOMB_X25_Y30_N12
\mem~304\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~304_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & ((\mem~207_q\))) # (!temp_addr2(3) & (\mem~143_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~143_q\,
	datad => \mem~207_q\,
	combout => \mem~304_combout\);

-- Location: FF_X25_Y30_N23
\mem~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~239_q\);

-- Location: LCCOMB_X25_Y30_N22
\mem~305\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~305_combout\ = (temp_addr2(2) & ((\mem~304_combout\ & ((\mem~239_q\))) # (!\mem~304_combout\ & (\mem~175_q\)))) # (!temp_addr2(2) & (((\mem~304_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~175_q\,
	datab => temp_addr2(2),
	datac => \mem~239_q\,
	datad => \mem~304_combout\,
	combout => \mem~305_combout\);

-- Location: LCCOMB_X25_Y30_N16
\mem~306\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~306_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~303_combout\))) # (!temp_addr2(0) & (\mem~305_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~305_combout\,
	datab => temp_addr2(1),
	datac => temp_addr2(0),
	datad => \mem~303_combout\,
	combout => \mem~306_combout\);

-- Location: FF_X23_Y30_N29
\mem~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~231_q\);

-- Location: FF_X23_Y29_N19
\mem~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~199_q\);

-- Location: FF_X24_Y30_N5
\mem~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~167_q\);

-- Location: LCCOMB_X24_Y30_N4
\mem~307\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~307_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~199_q\)) # (!temp_addr2(2) & ((\mem~167_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~199_q\,
	datab => temp_addr2(3),
	datac => \mem~167_q\,
	datad => temp_addr2(2),
	combout => \mem~307_combout\);

-- Location: FF_X23_Y30_N23
\mem~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[1]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~263_q\);

-- Location: LCCOMB_X23_Y30_N22
\mem~308\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~308_combout\ = (temp_addr2(3) & ((\mem~307_combout\ & ((\mem~263_q\))) # (!\mem~307_combout\ & (\mem~231_q\)))) # (!temp_addr2(3) & (((\mem~307_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~231_q\,
	datac => \mem~263_q\,
	datad => \mem~307_combout\,
	combout => \mem~308_combout\);

-- Location: LCCOMB_X25_Y30_N10
\mem~309\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~309_combout\ = (temp_addr2(1) & ((\mem~306_combout\ & (\mem~308_combout\)) # (!\mem~306_combout\ & ((\mem~301_combout\))))) # (!temp_addr2(1) & (((\mem~306_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~308_combout\,
	datac => \mem~301_combout\,
	datad => \mem~306_combout\,
	combout => \mem~309_combout\);

-- Location: LCCOMB_X26_Y30_N12
\Equal2~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = \ram_out[1]~input_o\ $ (((temp_addr2(4) & ((\mem~309_combout\))) # (!temp_addr2(4) & (\mem~299_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~299_combout\,
	datab => temp_addr2(4),
	datac => \ram_out[1]~input_o\,
	datad => \mem~309_combout\,
	combout => \Equal2~1_combout\);

-- Location: FF_X25_Y28_N21
\mem~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~64_q\);

-- Location: FF_X23_Y28_N9
\mem~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~56_q\);

-- Location: FF_X26_Y28_N17
\mem~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~48_q\);

-- Location: LCCOMB_X26_Y28_N16
\mem~310\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~310_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~56_q\)) # (!temp_addr2(0) & ((\mem~48_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~56_q\,
	datac => \mem~48_q\,
	datad => temp_addr2(0),
	combout => \mem~310_combout\);

-- Location: FF_X26_Y28_N19
\mem~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~72_q\);

-- Location: LCCOMB_X26_Y28_N18
\mem~311\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~311_combout\ = (temp_addr2(1) & ((\mem~310_combout\ & ((\mem~72_q\))) # (!\mem~310_combout\ & (\mem~64_q\)))) # (!temp_addr2(1) & (((\mem~310_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~64_q\,
	datab => temp_addr2(1),
	datac => \mem~72_q\,
	datad => \mem~310_combout\,
	combout => \mem~311_combout\);

-- Location: FF_X25_Y27_N25
\mem~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~88_q\);

-- Location: FF_X27_Y27_N9
\mem~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~96_q\);

-- Location: FF_X25_Y27_N3
\mem~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~24_q\);

-- Location: FF_X27_Y27_N3
\mem~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~32_q\);

-- Location: FF_X26_Y31_N9
\mem~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~128_q\);

-- Location: FF_X23_Y28_N3
\mem~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~184_q\);

-- Location: FF_X24_Y29_N13
\mem~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~216_q\);

-- Location: FF_X28_Y28_N11
\mem~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~208_q\);

-- Location: FF_X23_Y30_N9
\mem~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~232feeder_combout\,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~232_q\);

-- Location: FF_X23_Y28_N5
\mem~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~57feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~57_q\);

-- Location: FF_X25_Y28_N15
\mem~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~65feeder_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~65_q\);

-- Location: FF_X27_Y27_N31
\mem~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~33feeder_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~33_q\);

-- Location: FF_X26_Y31_N29
\mem~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~129_q\);

-- Location: FF_X27_Y31_N21
\mem~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~113_q\);

-- Location: LCCOMB_X27_Y31_N20
\mem~337\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~337_combout\ = (temp_addr2(0) & (temp_addr2(1))) # (!temp_addr2(0) & ((temp_addr2(1) & ((\mem~129_q\))) # (!temp_addr2(1) & (\mem~113_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~113_q\,
	datad => \mem~129_q\,
	combout => \mem~337_combout\);

-- Location: FF_X23_Y29_N7
\mem~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~217feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~217_q\);

-- Location: FF_X23_Y28_N15
\mem~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~185feeder_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~185_q\);

-- Location: FF_X28_Y30_N23
\mem~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~177_q\);

-- Location: FF_X28_Y28_N31
\mem~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~209feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~209_q\);

-- Location: FF_X25_Y30_N9
\mem~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~145_q\);

-- Location: LCCOMB_X25_Y30_N8
\mem~344\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~344_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~209_q\)) # (!temp_addr2(3) & ((\mem~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~209_q\,
	datac => \mem~145_q\,
	datad => temp_addr2(3),
	combout => \mem~344_combout\);

-- Location: FF_X25_Y30_N27
\mem~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~241_q\);

-- Location: LCCOMB_X25_Y30_N26
\mem~345\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~345_combout\ = (temp_addr2(2) & ((\mem~344_combout\ & (\mem~241_q\)) # (!\mem~344_combout\ & ((\mem~177_q\))))) # (!temp_addr2(2) & (\mem~344_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~344_combout\,
	datac => \mem~241_q\,
	datad => \mem~177_q\,
	combout => \mem~345_combout\);

-- Location: FF_X23_Y30_N21
\mem~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~233_q\);

-- Location: FF_X23_Y29_N17
\mem~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~201feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~201_q\);

-- Location: FF_X24_Y30_N25
\mem~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~169_q\);

-- Location: LCCOMB_X24_Y30_N24
\mem~347\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~347_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~201_q\)) # (!temp_addr2(2) & ((\mem~169_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~201_q\,
	datab => temp_addr2(3),
	datac => \mem~169_q\,
	datad => temp_addr2(2),
	combout => \mem~347_combout\);

-- Location: FF_X23_Y30_N15
\mem~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~265_q\);

-- Location: LCCOMB_X23_Y30_N14
\mem~348\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~348_combout\ = (temp_addr2(3) & ((\mem~347_combout\ & ((\mem~265_q\))) # (!\mem~347_combout\ & (\mem~233_q\)))) # (!temp_addr2(3) & (((\mem~347_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~233_q\,
	datac => \mem~265_q\,
	datad => \mem~347_combout\,
	combout => \mem~348_combout\);

-- Location: FF_X25_Y28_N17
\mem~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~66feeder_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~66_q\);

-- Location: FF_X23_Y28_N25
\mem~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~58feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~58_q\);

-- Location: FF_X25_Y27_N1
\mem~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~90_q\);

-- Location: FF_X27_Y27_N1
\mem~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~98_q\);

-- Location: FF_X25_Y27_N27
\mem~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~26_q\);

-- Location: FF_X25_Y31_N25
\mem~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~122feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~122_q\);

-- Location: FF_X27_Y31_N7
\mem~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~114_q\);

-- Location: LCCOMB_X27_Y31_N6
\mem~357\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~357_combout\ = (temp_addr2(1) & (temp_addr2(0))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~122_q\))) # (!temp_addr2(0) & (\mem~114_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~114_q\,
	datad => \mem~122_q\,
	combout => \mem~357_combout\);

-- Location: FF_X23_Y28_N27
\mem~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~186feeder_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~186_q\);

-- Location: FF_X23_Y29_N11
\mem~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~218feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~218_q\);

-- Location: FF_X24_Y28_N23
\mem~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~154_q\);

-- Location: LCCOMB_X24_Y28_N22
\mem~360\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~360_combout\ = (temp_addr2(3) & ((\mem~218_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~154_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~218_q\,
	datab => temp_addr2(3),
	datac => \mem~154_q\,
	datad => temp_addr2(2),
	combout => \mem~360_combout\);

-- Location: FF_X24_Y28_N1
\mem~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~250_q\);

-- Location: LCCOMB_X24_Y28_N0
\mem~361\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~361_combout\ = (temp_addr2(2) & ((\mem~360_combout\ & ((\mem~250_q\))) # (!\mem~360_combout\ & (\mem~186_q\)))) # (!temp_addr2(2) & (((\mem~360_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~186_q\,
	datab => temp_addr2(2),
	datac => \mem~250_q\,
	datad => \mem~360_combout\,
	combout => \mem~361_combout\);

-- Location: FF_X28_Y28_N25
\mem~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~226feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~226_q\);

-- Location: FF_X29_Y29_N9
\mem~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~194feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~194_q\);

-- Location: FF_X28_Y29_N9
\mem~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~162_q\);

-- Location: LCCOMB_X28_Y29_N8
\mem~362\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~362_combout\ = (temp_addr2(2) & ((\mem~194_q\) # ((temp_addr2(3))))) # (!temp_addr2(2) & (((\mem~162_q\ & !temp_addr2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~194_q\,
	datac => \mem~162_q\,
	datad => temp_addr2(3),
	combout => \mem~362_combout\);

-- Location: FF_X28_Y29_N11
\mem~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~258_q\);

-- Location: LCCOMB_X28_Y29_N10
\mem~363\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~363_combout\ = (temp_addr2(3) & ((\mem~362_combout\ & ((\mem~258_q\))) # (!\mem~362_combout\ & (\mem~226_q\)))) # (!temp_addr2(3) & (((\mem~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~226_q\,
	datac => \mem~258_q\,
	datad => \mem~362_combout\,
	combout => \mem~363_combout\);

-- Location: FF_X28_Y28_N3
\mem~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~210feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~210_q\);

-- Location: FF_X28_Y30_N25
\mem~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~178feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~178_q\);

-- Location: FF_X27_Y30_N1
\mem~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~146_q\);

-- Location: LCCOMB_X27_Y30_N0
\mem~364\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~364_combout\ = (temp_addr2(2) & ((temp_addr2(3)) # ((\mem~178_q\)))) # (!temp_addr2(2) & (!temp_addr2(3) & (\mem~146_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~146_q\,
	datad => \mem~178_q\,
	combout => \mem~364_combout\);

-- Location: FF_X27_Y30_N3
\mem~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~242_q\);

-- Location: LCCOMB_X27_Y30_N2
\mem~365\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~365_combout\ = (temp_addr2(3) & ((\mem~364_combout\ & ((\mem~242_q\))) # (!\mem~364_combout\ & (\mem~210_q\)))) # (!temp_addr2(3) & (((\mem~364_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~210_q\,
	datac => \mem~242_q\,
	datad => \mem~364_combout\,
	combout => \mem~365_combout\);

-- Location: LCCOMB_X27_Y30_N28
\mem~366\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~366_combout\ = (temp_addr2(1) & ((temp_addr2(0)) # ((\mem~363_combout\)))) # (!temp_addr2(1) & (!temp_addr2(0) & ((\mem~365_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~363_combout\,
	datad => \mem~365_combout\,
	combout => \mem~366_combout\);

-- Location: FF_X23_Y29_N5
\mem~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~202feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~202_q\);

-- Location: FF_X23_Y30_N17
\mem~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~234_q\);

-- Location: FF_X24_Y30_N3
\mem~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~170_q\);

-- Location: LCCOMB_X24_Y30_N2
\mem~367\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~367_combout\ = (temp_addr2(3) & ((\mem~234_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~170_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~234_q\,
	datab => temp_addr2(3),
	datac => \mem~170_q\,
	datad => temp_addr2(2),
	combout => \mem~367_combout\);

-- Location: FF_X23_Y30_N3
\mem~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~266_q\);

-- Location: LCCOMB_X23_Y30_N2
\mem~368\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~368_combout\ = (temp_addr2(2) & ((\mem~367_combout\ & ((\mem~266_q\))) # (!\mem~367_combout\ & (\mem~202_q\)))) # (!temp_addr2(2) & (((\mem~367_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~202_q\,
	datac => \mem~266_q\,
	datad => \mem~367_combout\,
	combout => \mem~368_combout\);

-- Location: LCCOMB_X27_Y30_N6
\mem~369\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~369_combout\ = (temp_addr2(0) & ((\mem~366_combout\ & ((\mem~368_combout\))) # (!\mem~366_combout\ & (\mem~361_combout\)))) # (!temp_addr2(0) & (((\mem~366_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~361_combout\,
	datab => temp_addr2(0),
	datac => \mem~368_combout\,
	datad => \mem~366_combout\,
	combout => \mem~369_combout\);

-- Location: FF_X25_Y27_N21
\mem~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~91_q\);

-- Location: FF_X23_Y28_N21
\mem~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~59_q\);

-- Location: FF_X25_Y28_N27
\mem~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~67_q\);

-- Location: FF_X27_Y27_N13
\mem~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~35feeder_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~35_q\);

-- Location: FF_X25_Y27_N23
\mem~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~27_q\);

-- Location: FF_X25_Y31_N27
\mem~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~123feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~123_q\);

-- Location: FF_X26_Y31_N13
\mem~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~131feeder_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~131_q\);

-- Location: FF_X27_Y31_N17
\mem~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~115_q\);

-- Location: LCCOMB_X27_Y31_N16
\mem~377\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~377_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~131_q\)) # (!temp_addr2(1) & ((\mem~115_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~131_q\,
	datab => temp_addr2(0),
	datac => \mem~115_q\,
	datad => temp_addr2(1),
	combout => \mem~377_combout\);

-- Location: FF_X26_Y31_N15
\mem~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~139_q\);

-- Location: LCCOMB_X26_Y31_N14
\mem~378\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~378_combout\ = (temp_addr2(0) & ((\mem~377_combout\ & ((\mem~139_q\))) # (!\mem~377_combout\ & (\mem~123_q\)))) # (!temp_addr2(0) & (((\mem~377_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~123_q\,
	datab => temp_addr2(0),
	datac => \mem~139_q\,
	datad => \mem~377_combout\,
	combout => \mem~378_combout\);

-- Location: FF_X23_Y29_N31
\mem~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~219feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~219_q\);

-- Location: FF_X23_Y30_N13
\mem~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~235_q\);

-- Location: FF_X23_Y29_N25
\mem~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~203feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~203_q\);

-- Location: FF_X25_Y28_N13
\mem~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~68_q\);

-- Location: FF_X23_Y28_N7
\mem~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~60feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~60_q\);

-- Location: FF_X26_Y28_N1
\mem~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~52_q\);

-- Location: LCCOMB_X26_Y28_N0
\mem~390\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~390_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~60_q\)) # (!temp_addr2(0) & ((\mem~52_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~60_q\,
	datac => \mem~52_q\,
	datad => temp_addr2(0),
	combout => \mem~390_combout\);

-- Location: FF_X26_Y28_N11
\mem~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~76_q\);

-- Location: LCCOMB_X26_Y28_N10
\mem~391\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~391_combout\ = (temp_addr2(1) & ((\mem~390_combout\ & ((\mem~76_q\))) # (!\mem~390_combout\ & (\mem~68_q\)))) # (!temp_addr2(1) & (((\mem~390_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~68_q\,
	datab => temp_addr2(1),
	datac => \mem~76_q\,
	datad => \mem~390_combout\,
	combout => \mem~391_combout\);

-- Location: FF_X25_Y27_N17
\mem~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~92_q\);

-- Location: FF_X25_Y27_N11
\mem~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~28_q\);

-- Location: FF_X26_Y31_N17
\mem~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~132_q\);

-- Location: FF_X24_Y31_N27
\mem~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~188_q\);

-- Location: FF_X28_Y28_N17
\mem~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~228feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~228_q\);

-- Location: FF_X28_Y28_N27
\mem~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~212feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~212_q\);

-- Location: FF_X28_Y30_N13
\mem~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~180feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~180_q\);

-- Location: FF_X24_Y31_N21
\mem~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~236_q\);

-- Location: FF_X27_Y27_N17
\mem~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~101_q\);

-- Location: FF_X25_Y27_N29
\mem~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~93_q\);

-- Location: FF_X28_Y27_N5
\mem~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~85_q\);

-- Location: LCCOMB_X28_Y27_N4
\mem~410\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~410_combout\ = (temp_addr2(1) & (temp_addr2(0))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~93_q\))) # (!temp_addr2(0) & (\mem~85_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~85_q\,
	datad => \mem~93_q\,
	combout => \mem~410_combout\);

-- Location: FF_X28_Y27_N7
\mem~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~109_q\);

-- Location: LCCOMB_X28_Y27_N6
\mem~411\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~411_combout\ = (\mem~410_combout\ & (((\mem~109_q\) # (!temp_addr2(1))))) # (!\mem~410_combout\ & (\mem~101_q\ & ((temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~101_q\,
	datab => \mem~410_combout\,
	datac => \mem~109_q\,
	datad => temp_addr2(1),
	combout => \mem~411_combout\);

-- Location: FF_X23_Y28_N1
\mem~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~61feeder_combout\,
	ena => \mem~433_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~61_q\);

-- Location: FF_X25_Y28_N31
\mem~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~69feeder_combout\,
	ena => \mem~431_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~69_q\);

-- Location: FF_X26_Y28_N21
\mem~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~53_q\);

-- Location: LCCOMB_X26_Y28_N20
\mem~412\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~412_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~69_q\)) # (!temp_addr2(1) & ((\mem~53_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~69_q\,
	datab => temp_addr2(0),
	datac => \mem~53_q\,
	datad => temp_addr2(1),
	combout => \mem~412_combout\);

-- Location: FF_X26_Y28_N7
\mem~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~77_q\);

-- Location: LCCOMB_X26_Y28_N6
\mem~413\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~413_combout\ = (temp_addr2(0) & ((\mem~412_combout\ & ((\mem~77_q\))) # (!\mem~412_combout\ & (\mem~61_q\)))) # (!temp_addr2(0) & (((\mem~412_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~61_q\,
	datab => temp_addr2(0),
	datac => \mem~77_q\,
	datad => \mem~412_combout\,
	combout => \mem~413_combout\);

-- Location: FF_X27_Y27_N19
\mem~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~37_q\);

-- Location: FF_X25_Y27_N31
\mem~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~29_q\);

-- Location: FF_X26_Y27_N5
\mem~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~21_q\);

-- Location: LCCOMB_X26_Y27_N4
\mem~414\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~414_combout\ = (temp_addr2(0) & ((\mem~29_q\) # ((temp_addr2(1))))) # (!temp_addr2(0) & (((\mem~21_q\ & !temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~29_q\,
	datac => \mem~21_q\,
	datad => temp_addr2(1),
	combout => \mem~414_combout\);

-- Location: FF_X26_Y27_N15
\mem~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~45_q\);

-- Location: LCCOMB_X26_Y27_N14
\mem~415\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~415_combout\ = (\mem~414_combout\ & (((\mem~45_q\) # (!temp_addr2(1))))) # (!\mem~414_combout\ & (\mem~37_q\ & ((temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~37_q\,
	datab => \mem~414_combout\,
	datac => \mem~45_q\,
	datad => temp_addr2(1),
	combout => \mem~415_combout\);

-- Location: LCCOMB_X27_Y30_N26
\mem~416\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~416_combout\ = (temp_addr2(2) & ((temp_addr2(3)) # ((\mem~413_combout\)))) # (!temp_addr2(2) & (!temp_addr2(3) & ((\mem~415_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~413_combout\,
	datad => \mem~415_combout\,
	combout => \mem~416_combout\);

-- Location: FF_X25_Y31_N15
\mem~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~125feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~125_q\);

-- Location: FF_X24_Y29_N23
\mem~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~133feeder_combout\,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~133_q\);

-- Location: FF_X27_Y31_N29
\mem~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~117_q\);

-- Location: LCCOMB_X27_Y31_N28
\mem~417\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~417_combout\ = (temp_addr2(0) & (temp_addr2(1))) # (!temp_addr2(0) & ((temp_addr2(1) & ((\mem~133_q\))) # (!temp_addr2(1) & (\mem~117_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~117_q\,
	datad => \mem~133_q\,
	combout => \mem~417_combout\);

-- Location: FF_X26_Y31_N5
\mem~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~141_q\);

-- Location: LCCOMB_X26_Y31_N4
\mem~418\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~418_combout\ = (temp_addr2(0) & ((\mem~417_combout\ & ((\mem~141_q\))) # (!\mem~417_combout\ & (\mem~125_q\)))) # (!temp_addr2(0) & (((\mem~417_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~125_q\,
	datab => temp_addr2(0),
	datac => \mem~141_q\,
	datad => \mem~417_combout\,
	combout => \mem~418_combout\);

-- Location: LCCOMB_X27_Y30_N20
\mem~419\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~419_combout\ = (temp_addr2(3) & ((\mem~416_combout\ & ((\mem~418_combout\))) # (!\mem~416_combout\ & (\mem~411_combout\)))) # (!temp_addr2(3) & (((\mem~416_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~411_combout\,
	datab => temp_addr2(3),
	datac => \mem~416_combout\,
	datad => \mem~418_combout\,
	combout => \mem~419_combout\);

-- Location: FF_X29_Y29_N3
\mem~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~197_q\);

-- Location: FF_X28_Y28_N29
\mem~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~229_q\);

-- Location: FF_X28_Y29_N5
\mem~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~165_q\);

-- Location: LCCOMB_X28_Y29_N4
\mem~420\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~420_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~229_q\)) # (!temp_addr2(3) & ((\mem~165_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~229_q\,
	datac => \mem~165_q\,
	datad => temp_addr2(3),
	combout => \mem~420_combout\);

-- Location: FF_X28_Y29_N7
\mem~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~261_q\);

-- Location: LCCOMB_X28_Y29_N6
\mem~421\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~421_combout\ = (\mem~420_combout\ & (((\mem~261_q\) # (!temp_addr2(2))))) # (!\mem~420_combout\ & (\mem~197_q\ & ((temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~197_q\,
	datab => \mem~420_combout\,
	datac => \mem~261_q\,
	datad => temp_addr2(2),
	combout => \mem~421_combout\);

-- Location: FF_X24_Y29_N25
\mem~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~221feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~221_q\);

-- Location: FF_X23_Y28_N19
\mem~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~189feeder_combout\,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~189_q\);

-- Location: FF_X24_Y28_N7
\mem~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~157_q\);

-- Location: LCCOMB_X24_Y28_N6
\mem~422\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~422_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~189_q\)) # (!temp_addr2(2) & ((\mem~157_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~189_q\,
	datac => \mem~157_q\,
	datad => temp_addr2(2),
	combout => \mem~422_combout\);

-- Location: FF_X24_Y28_N9
\mem~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~253_q\);

-- Location: LCCOMB_X24_Y28_N8
\mem~423\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~423_combout\ = (temp_addr2(3) & ((\mem~422_combout\ & ((\mem~253_q\))) # (!\mem~422_combout\ & (\mem~221_q\)))) # (!temp_addr2(3) & (((\mem~422_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~221_q\,
	datab => temp_addr2(3),
	datac => \mem~253_q\,
	datad => \mem~422_combout\,
	combout => \mem~423_combout\);

-- Location: FF_X28_Y30_N17
\mem~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~181_q\);

-- Location: FF_X28_Y28_N7
\mem~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~213_q\);

-- Location: FF_X27_Y30_N23
\mem~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~149_q\);

-- Location: LCCOMB_X27_Y30_N22
\mem~424\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~424_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & ((\mem~213_q\))) # (!temp_addr2(3) & (\mem~149_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~149_q\,
	datad => \mem~213_q\,
	combout => \mem~424_combout\);

-- Location: FF_X27_Y30_N17
\mem~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~245_q\);

-- Location: LCCOMB_X27_Y30_N16
\mem~425\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~425_combout\ = (temp_addr2(2) & ((\mem~424_combout\ & ((\mem~245_q\))) # (!\mem~424_combout\ & (\mem~181_q\)))) # (!temp_addr2(2) & (((\mem~424_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~181_q\,
	datac => \mem~245_q\,
	datad => \mem~424_combout\,
	combout => \mem~425_combout\);

-- Location: LCCOMB_X27_Y30_N18
\mem~426\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~426_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~423_combout\))) # (!temp_addr2(0) & (\mem~425_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~425_combout\,
	datac => temp_addr2(0),
	datad => \mem~423_combout\,
	combout => \mem~426_combout\);

-- Location: FF_X23_Y30_N27
\mem~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~475_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~237_q\);

-- Location: FF_X23_Y29_N23
\mem~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~205_q\);

-- Location: FF_X24_Y30_N17
\mem~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~173_q\);

-- Location: LCCOMB_X24_Y30_N16
\mem~427\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~427_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~205_q\)) # (!temp_addr2(2) & ((\mem~173_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~205_q\,
	datab => temp_addr2(3),
	datac => \mem~173_q\,
	datad => temp_addr2(2),
	combout => \mem~427_combout\);

-- Location: FF_X23_Y30_N5
\mem~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[7]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~269_q\);

-- Location: LCCOMB_X23_Y30_N4
\mem~428\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~428_combout\ = (temp_addr2(3) & ((\mem~427_combout\ & ((\mem~269_q\))) # (!\mem~427_combout\ & (\mem~237_q\)))) # (!temp_addr2(3) & (((\mem~427_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~237_q\,
	datab => temp_addr2(3),
	datac => \mem~269_q\,
	datad => \mem~427_combout\,
	combout => \mem~428_combout\);

-- Location: LCCOMB_X27_Y30_N4
\mem~429\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~429_combout\ = (temp_addr2(1) & ((\mem~426_combout\ & (\mem~428_combout\)) # (!\mem~426_combout\ & ((\mem~421_combout\))))) # (!temp_addr2(1) & (((\mem~426_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~428_combout\,
	datab => temp_addr2(1),
	datac => \mem~421_combout\,
	datad => \mem~426_combout\,
	combout => \mem~429_combout\);

-- Location: LCCOMB_X26_Y30_N26
\Equal2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = \ram_out[7]~input_o\ $ (((temp_addr2(4) & ((\mem~429_combout\))) # (!temp_addr2(4) & (\mem~419_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(4),
	datab => \ram_out[7]~input_o\,
	datac => \mem~419_combout\,
	datad => \mem~429_combout\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X26_Y30_N22
\Equal1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (\ram_out[6]~input_o\ & (\ram_out2[6]~head_lut_combout\ & (\ram_out[7]~input_o\ $ (!\ram_out2[7]~head_lut_combout\)))) # (!\ram_out[6]~input_o\ & (!\ram_out2[6]~head_lut_combout\ & (\ram_out[7]~input_o\ $ 
-- (!\ram_out2[7]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[6]~input_o\,
	datab => \ram_out[7]~input_o\,
	datac => \ram_out2[7]~head_lut_combout\,
	datad => \ram_out2[6]~head_lut_combout\,
	combout => \Equal1~3_combout\);

-- Location: FF_X25_Y28_N1
\ram_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(2));

-- Location: FF_X25_Y28_N19
\ram_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_in[3]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(3));

-- Location: LCCOMB_X25_Y28_N0
\Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\ctrl_out[3]~input_o\ & (ram_in(3) & (\ctrl_out[2]~input_o\ $ (!ram_in(2))))) # (!\ctrl_out[3]~input_o\ & (!ram_in(3) & (\ctrl_out[2]~input_o\ $ (!ram_in(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_out[3]~input_o\,
	datab => \ctrl_out[2]~input_o\,
	datac => ram_in(2),
	datad => ram_in(3),
	combout => \Equal0~1_combout\);

-- Location: FF_X24_Y30_N27
\temp_addr2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(5));

-- Location: FF_X24_Y30_N13
\temp_addr2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(6));

-- Location: FF_X24_Y30_N31
\temp_addr2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(7));

-- Location: FF_X24_Y30_N1
\temp_addr2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(8));

-- Location: LCCOMB_X27_Y29_N12
\LessThan1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (temp_addr2(8)) # ((temp_addr2(7)) # ((temp_addr2(6)) # (temp_addr2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(8),
	datab => temp_addr2(7),
	datac => temp_addr2(6),
	datad => temp_addr2(5),
	combout => \LessThan1~0_combout\);

-- Location: FF_X27_Y32_N11
\temp_addr2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~35_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(10));

-- Location: FF_X27_Y32_N13
\temp_addr2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(11));

-- Location: LCCOMB_X27_Y29_N22
\LessThan1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (temp_addr2(12)) # ((temp_addr2(11)) # ((temp_addr2(10)) # (temp_addr2(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(12),
	datab => temp_addr2(11),
	datac => temp_addr2(10),
	datad => temp_addr2(9),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X27_Y29_N16
\LessThan1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (temp_addr2(1) & (temp_addr2(3) & (temp_addr2(2) & temp_addr2(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(3),
	datac => temp_addr2(2),
	datad => temp_addr2(0),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X27_Y29_N26
\LessThan1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\LessThan1~1_combout\) # ((\LessThan1~0_combout\) # ((temp_addr2(4) & \LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(4),
	datab => \LessThan1~2_combout\,
	datac => \LessThan1~1_combout\,
	datad => \LessThan1~0_combout\,
	combout => \LessThan1~3_combout\);

-- Location: FF_X27_Y32_N5
\temp_addr2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~83_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(17));

-- Location: FF_X27_Y32_N31
\temp_addr2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~84_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(18));

-- Location: FF_X27_Y32_N3
\temp_addr2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~86_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(20));

-- Location: LCCOMB_X27_Y32_N28
\LessThan1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (temp_addr2(18)) # ((temp_addr2(20)) # ((temp_addr2(17)) # (temp_addr2(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(18),
	datab => temp_addr2(20),
	datac => temp_addr2(17),
	datad => temp_addr2(19),
	combout => \LessThan1~5_combout\);

-- Location: FF_X25_Y32_N13
\temp_addr2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~90_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(24));

-- Location: FF_X25_Y32_N11
\temp_addr2[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~92_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(26));

-- Location: LCCOMB_X26_Y29_N28
\mem~431\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~431_combout\ = (\reset~input_o\ & (!temp_addr(4) & (\mem~430_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp_addr(4),
	datac => \mem~430_combout\,
	datad => \process_0~0_combout\,
	combout => \mem~431_combout\);

-- Location: LCCOMB_X23_Y28_N12
\mem~433\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~433_combout\ = (\reset~input_o\ & (\process_0~0_combout\ & (!temp_addr(4) & \mem~432_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \process_0~0_combout\,
	datac => temp_addr(4),
	datad => \mem~432_combout\,
	combout => \mem~433_combout\);

-- Location: LCCOMB_X25_Y31_N16
\mem~438\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~438_combout\ = (!temp_addr(1) & (!temp_addr(2) & (temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~438_combout\);

-- Location: LCCOMB_X25_Y31_N10
\mem~440\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~440_combout\ = (temp_addr(1) & (!temp_addr(2) & (!temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~440_combout\);

-- Location: LCCOMB_X25_Y31_N22
\mem~444\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~444_combout\ = (temp_addr(1) & (!temp_addr(2) & (temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~444_combout\);

-- Location: LCCOMB_X24_Y29_N14
\mem~475\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~475_combout\ = (\mem~444_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~444_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~475_combout\);

-- Location: FF_X25_Y29_N27
\ram_out2[1]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[1]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[1]~_emulated_q\);

-- Location: FF_X25_Y29_N11
\ram_out2[3]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[3]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[3]~_emulated_q\);

-- Location: FF_X26_Y29_N31
\ram_out2[2]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[2]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[2]~_emulated_q\);

-- Location: FF_X26_Y29_N3
\ram_out2[5]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[5]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[5]~_emulated_q\);

-- Location: FF_X25_Y29_N23
\ram_out2[7]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[7]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[7]~_emulated_q\);

-- Location: LCCOMB_X25_Y29_N0
\ram_out2[7]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[7]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[7]~_emulated_q\ $ (((\ram_out2[7]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[7]~_emulated_q\,
	datab => \ram_out[7]~input_o\,
	datac => \reset~input_o\,
	datad => \ram_out2[7]~latch_combout\,
	combout => \ram_out2[7]~head_lut_combout\);

-- Location: FF_X26_Y29_N19
\ram_out2[6]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[6]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[6]~_emulated_q\);

-- Location: LCCOMB_X26_Y29_N12
\ram_out2[6]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[6]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[6]~_emulated_q\ $ (((\ram_out2[6]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[6]~_emulated_q\,
	datab => \ram_out[6]~input_o\,
	datac => \ram_out2[6]~latch_combout\,
	datad => \reset~input_o\,
	combout => \ram_out2[6]~head_lut_combout\);

-- Location: LCCOMB_X24_Y30_N26
\Add2~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (\Add2~18_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~18_combout\,
	datac => \LessThan1~9_combout\,
	datad => temp_addr2(31),
	combout => \Add2~20_combout\);

-- Location: LCCOMB_X24_Y30_N12
\Add2~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~23_combout\ = (\Add2~21_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~21_combout\,
	combout => \Add2~23_combout\);

-- Location: LCCOMB_X24_Y30_N30
\Add2~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (\Add2~24_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~24_combout\,
	combout => \Add2~26_combout\);

-- Location: LCCOMB_X24_Y30_N0
\Add2~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~29_combout\ = (\Add2~27_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~27_combout\,
	combout => \Add2~29_combout\);

-- Location: LCCOMB_X27_Y32_N10
\Add2~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~35_combout\ = (\Add2~33_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~33_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~35_combout\);

-- Location: LCCOMB_X27_Y32_N12
\Add2~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (\Add2~36_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~36_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~38_combout\);

-- Location: LCCOMB_X27_Y32_N4
\Add2~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~83_combout\ = (\Add2~50_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datab => temp_addr2(31),
	datad => \LessThan1~9_combout\,
	combout => \Add2~83_combout\);

-- Location: LCCOMB_X27_Y32_N30
\Add2~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~84_combout\ = (\Add2~52_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~52_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~84_combout\);

-- Location: LCCOMB_X27_Y32_N2
\Add2~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~86_combout\ = (\Add2~56_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => temp_addr2(31),
	datad => \LessThan1~9_combout\,
	combout => \Add2~86_combout\);

-- Location: LCCOMB_X25_Y32_N12
\Add2~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~90_combout\ = (\Add2~64_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datac => temp_addr2(31),
	datad => \Add2~64_combout\,
	combout => \Add2~90_combout\);

-- Location: LCCOMB_X25_Y32_N10
\Add2~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~92_combout\ = (\Add2~68_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~68_combout\,
	combout => \Add2~92_combout\);

-- Location: FF_X25_Y35_N25
\temp_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~73_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(5));

-- Location: FF_X25_Y35_N21
\temp_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~75_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(7));

-- Location: LCCOMB_X25_Y34_N26
\LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (temp_addr(8)) # ((temp_addr(5)) # ((temp_addr(6)) # (temp_addr(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(8),
	datab => temp_addr(5),
	datac => temp_addr(6),
	datad => temp_addr(7),
	combout => \LessThan0~0_combout\);

-- Location: FF_X25_Y34_N11
\temp_addr[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~99_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(30));

-- Location: FF_X25_Y35_N1
\temp_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~82_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(13));

-- Location: FF_X25_Y35_N3
\temp_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~83_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(14));

-- Location: FF_X25_Y35_N13
\temp_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~84_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(15));

-- Location: LCCOMB_X25_Y35_N16
\LessThan0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (temp_addr(16)) # ((temp_addr(14)) # ((temp_addr(13)) # (temp_addr(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(16),
	datab => temp_addr(14),
	datac => temp_addr(13),
	datad => temp_addr(15),
	combout => \LessThan0~3_combout\);

-- Location: FF_X25_Y33_N7
\temp_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~89_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(20));

-- Location: FF_X25_Y33_N31
\temp_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~92_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(23));

-- Location: LCCOMB_X25_Y29_N26
\ram_out2[1]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[1]~data_lut_combout\ = \ram_out2[1]~latch_combout\ $ (\ram_out[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out2[1]~latch_combout\,
	datad => \ram_out[1]~input_o\,
	combout => \ram_out2[1]~data_lut_combout\);

-- Location: LCCOMB_X25_Y29_N10
\ram_out2[3]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[3]~data_lut_combout\ = \ram_out[3]~input_o\ $ (\ram_out2[3]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out[3]~input_o\,
	datad => \ram_out2[3]~latch_combout\,
	combout => \ram_out2[3]~data_lut_combout\);

-- Location: LCCOMB_X26_Y29_N30
\ram_out2[2]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[2]~data_lut_combout\ = \ram_out2[2]~latch_combout\ $ (\ram_out[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out2[2]~latch_combout\,
	datac => \ram_out[2]~input_o\,
	combout => \ram_out2[2]~data_lut_combout\);

-- Location: LCCOMB_X26_Y29_N2
\ram_out2[5]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[5]~data_lut_combout\ = \ram_out2[5]~latch_combout\ $ (\ram_out[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[5]~latch_combout\,
	datad => \ram_out[5]~input_o\,
	combout => \ram_out2[5]~data_lut_combout\);

-- Location: LCCOMB_X25_Y29_N22
\ram_out2[7]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[7]~data_lut_combout\ = \ram_out2[7]~latch_combout\ $ (\ram_out[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[7]~latch_combout\,
	datac => \ram_out[7]~input_o\,
	combout => \ram_out2[7]~data_lut_combout\);

-- Location: LCCOMB_X26_Y29_N18
\ram_out2[6]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[6]~data_lut_combout\ = \ram_out[6]~input_o\ $ (\ram_out2[6]~latch_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ram_out[6]~input_o\,
	datad => \ram_out2[6]~latch_combout\,
	combout => \ram_out2[6]~data_lut_combout\);

-- Location: LCCOMB_X25_Y35_N24
\Add0~73\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~73_combout\ = (\Add0~19_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~19_combout\,
	combout => \Add0~73_combout\);

-- Location: LCCOMB_X25_Y35_N20
\Add0~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = (\Add0~23_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \LessThan0~8_combout\,
	datac => temp_addr(31),
	combout => \Add0~75_combout\);

-- Location: LCCOMB_X25_Y35_N0
\Add0~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~82_combout\ = (\Add0~35_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~35_combout\,
	combout => \Add0~82_combout\);

-- Location: LCCOMB_X25_Y35_N2
\Add0~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = (\Add0~37_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~37_combout\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X25_Y35_N12
\Add0~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\Add0~39_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~39_combout\,
	combout => \Add0~84_combout\);

-- Location: LCCOMB_X25_Y33_N6
\Add0~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = (\Add0~49_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~49_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X25_Y33_N30
\Add0~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = (\Add0~55_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~55_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X25_Y34_N10
\Add0~99\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\Add0~69_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => temp_addr(31),
	datac => \Add0~69_combout\,
	combout => \Add0~99_combout\);

-- Location: LCCOMB_X25_Y29_N6
\ram_out2[7]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[7]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[7]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out[7]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[7]~latch_combout\,
	combout => \ram_out2[7]~latch_combout\);

-- Location: LCCOMB_X26_Y29_N14
\ram_out2[6]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[6]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[6]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[6]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[6]~latch_combout\,
	combout => \ram_out2[6]~latch_combout\);

-- Location: IOIBUF_X25_Y0_N8
\ram_out[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(6),
	o => \ram_out[6]~input_o\);

-- Location: IOIBUF_X16_Y41_N8
\ram_out[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(7),
	o => \ram_out[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\wr_ena~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr_ena,
	o => \wr_ena~input_o\);

-- Location: LCCOMB_X24_Y29_N26
\mem~215feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~215feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~215feeder_combout\);

-- Location: LCCOMB_X25_Y31_N2
\mem~119feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~119feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~119feeder_combout\);

-- Location: LCCOMB_X29_Y29_N18
\mem~191feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~191feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~191feeder_combout\);

-- Location: LCCOMB_X25_Y27_N14
\mem~23feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~23feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~23feeder_combout\);

-- Location: LCCOMB_X25_Y27_N4
\mem~87feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~87feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~87feeder_combout\);

-- Location: LCCOMB_X23_Y28_N30
\mem~183feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~183feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~183feeder_combout\);

-- Location: LCCOMB_X23_Y28_N28
\mem~55feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~55feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \mem~55feeder_combout\);

-- Location: LCCOMB_X26_Y31_N0
\mem~126feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~126feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~126feeder_combout\);

-- Location: LCCOMB_X25_Y28_N8
\mem~62feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~62feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~62feeder_combout\);

-- Location: LCCOMB_X23_Y30_N24
\mem~230feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~230feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~230feeder_combout\);

-- Location: LCCOMB_X23_Y28_N10
\mem~182feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~182feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~182feeder_combout\);

-- Location: LCCOMB_X23_Y28_N16
\mem~54feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~54feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~54feeder_combout\);

-- Location: LCCOMB_X27_Y27_N30
\mem~33feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~33feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~33feeder_combout\);

-- Location: LCCOMB_X23_Y29_N16
\mem~201feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~201feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~201feeder_combout\);

-- Location: LCCOMB_X23_Y29_N6
\mem~217feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~217feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~217feeder_combout\);

-- Location: LCCOMB_X28_Y28_N30
\mem~209feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~209feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~209feeder_combout\);

-- Location: LCCOMB_X23_Y28_N14
\mem~185feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~185feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~185feeder_combout\);

-- Location: LCCOMB_X23_Y28_N4
\mem~57feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~57feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~57feeder_combout\);

-- Location: LCCOMB_X25_Y28_N14
\mem~65feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~65feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~65feeder_combout\);

-- Location: LCCOMB_X25_Y28_N18
\ram_in[3]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_in[3]~feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \ram_in[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y30_N8
\mem~232feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~232feeder_combout\ = \ctrl_out[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[2]~input_o\,
	combout => \mem~232feeder_combout\);

-- Location: LCCOMB_X27_Y27_N12
\mem~35feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~35feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~35feeder_combout\);

-- Location: LCCOMB_X25_Y31_N26
\mem~123feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~123feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~123feeder_combout\);

-- Location: LCCOMB_X26_Y31_N12
\mem~131feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~131feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~131feeder_combout\);

-- Location: LCCOMB_X23_Y29_N24
\mem~203feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~203feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~203feeder_combout\);

-- Location: LCCOMB_X23_Y29_N30
\mem~219feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~219feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~219feeder_combout\);

-- Location: LCCOMB_X25_Y28_N16
\mem~66feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~66feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~66feeder_combout\);

-- Location: LCCOMB_X23_Y29_N4
\mem~202feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~202feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~202feeder_combout\);

-- Location: LCCOMB_X23_Y29_N10
\mem~218feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~218feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~218feeder_combout\);

-- Location: LCCOMB_X25_Y31_N24
\mem~122feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~122feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~122feeder_combout\);

-- Location: LCCOMB_X28_Y30_N24
\mem~178feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~178feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~178feeder_combout\);

-- Location: LCCOMB_X29_Y29_N8
\mem~194feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~194feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~194feeder_combout\);

-- Location: LCCOMB_X28_Y28_N2
\mem~210feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~210feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~210feeder_combout\);

-- Location: LCCOMB_X28_Y28_N24
\mem~226feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~226feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~226feeder_combout\);

-- Location: LCCOMB_X23_Y28_N26
\mem~186feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~186feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~186feeder_combout\);

-- Location: LCCOMB_X23_Y28_N24
\mem~58feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~58feeder_combout\ = \ctrl_out[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[4]~input_o\,
	combout => \mem~58feeder_combout\);

-- Location: LCCOMB_X24_Y29_N24
\mem~221feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~221feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~221feeder_combout\);

-- Location: LCCOMB_X24_Y29_N22
\mem~133feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~133feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~133feeder_combout\);

-- Location: LCCOMB_X25_Y31_N14
\mem~125feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~125feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~125feeder_combout\);

-- Location: LCCOMB_X23_Y28_N18
\mem~189feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~189feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~189feeder_combout\);

-- Location: LCCOMB_X23_Y28_N0
\mem~61feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~61feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~61feeder_combout\);

-- Location: LCCOMB_X25_Y28_N30
\mem~69feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~69feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \mem~69feeder_combout\);

-- Location: LCCOMB_X28_Y28_N26
\mem~212feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~212feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~212feeder_combout\);

-- Location: LCCOMB_X28_Y28_N16
\mem~228feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~228feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~228feeder_combout\);

-- Location: LCCOMB_X28_Y30_N12
\mem~180feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~180feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~180feeder_combout\);

-- Location: LCCOMB_X23_Y28_N6
\mem~60feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~60feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~60feeder_combout\);

-- Location: IOOBUF_X41_Y41_N9
\data_Valid~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S_data_Valid~q\,
	devoe => ww_devoe,
	o => \data_Valid~output_o\);

-- Location: IOOBUF_X52_Y19_N9
\validOffset[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(0),
	devoe => ww_devoe,
	o => \validOffset[0]~output_o\);

-- Location: IOOBUF_X52_Y28_N9
\validOffset[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(1),
	devoe => ww_devoe,
	o => \validOffset[1]~output_o\);

-- Location: IOOBUF_X46_Y41_N9
\validOffset[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(2),
	devoe => ww_devoe,
	o => \validOffset[2]~output_o\);

-- Location: IOOBUF_X52_Y31_N9
\validOffset[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(3),
	devoe => ww_devoe,
	o => \validOffset[3]~output_o\);

-- Location: IOOBUF_X52_Y28_N2
\validOffset[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(4),
	devoe => ww_devoe,
	o => \validOffset[4]~output_o\);

-- Location: IOOBUF_X52_Y19_N2
\validOffset[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(5),
	devoe => ww_devoe,
	o => \validOffset[5]~output_o\);

-- Location: IOOBUF_X52_Y30_N2
\validOffset[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(6),
	devoe => ww_devoe,
	o => \validOffset[6]~output_o\);

-- Location: IOOBUF_X48_Y0_N2
\validOffset[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(7),
	devoe => ww_devoe,
	o => \validOffset[7]~output_o\);

-- Location: IOOBUF_X52_Y27_N9
\validOffset[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(8),
	devoe => ww_devoe,
	o => \validOffset[8]~output_o\);

-- Location: IOOBUF_X50_Y0_N2
\validOffset[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(9),
	devoe => ww_devoe,
	o => \validOffset[9]~output_o\);

-- Location: IOOBUF_X48_Y41_N2
\validOffset[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(10),
	devoe => ww_devoe,
	o => \validOffset[10]~output_o\);

-- Location: IOOBUF_X52_Y16_N9
\validOffset[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(11),
	devoe => ww_devoe,
	o => \validOffset[11]~output_o\);

-- Location: IOOBUF_X46_Y41_N2
\validOffset[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(12),
	devoe => ww_devoe,
	o => \validOffset[12]~output_o\);

-- Location: IOOBUF_X52_Y32_N16
\validOffset[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(13),
	devoe => ww_devoe,
	o => \validOffset[13]~output_o\);

-- Location: IOOBUF_X52_Y15_N9
\validOffset[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(14),
	devoe => ww_devoe,
	o => \validOffset[14]~output_o\);

-- Location: IOOBUF_X52_Y25_N2
\validOffset[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(15),
	devoe => ww_devoe,
	o => \validOffset[15]~output_o\);

-- Location: IOOBUF_X52_Y15_N2
\validOffset[16]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(16),
	devoe => ww_devoe,
	o => \validOffset[16]~output_o\);

-- Location: IOOBUF_X46_Y0_N23
\validOffset[17]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(17),
	devoe => ww_devoe,
	o => \validOffset[17]~output_o\);

-- Location: IOOBUF_X50_Y41_N9
\validOffset[18]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(18),
	devoe => ww_devoe,
	o => \validOffset[18]~output_o\);

-- Location: IOOBUF_X50_Y0_N9
\validOffset[19]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(19),
	devoe => ww_devoe,
	o => \validOffset[19]~output_o\);

-- Location: IOOBUF_X52_Y18_N9
\validOffset[20]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(20),
	devoe => ww_devoe,
	o => \validOffset[20]~output_o\);

-- Location: IOOBUF_X52_Y25_N9
\validOffset[21]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(21),
	devoe => ww_devoe,
	o => \validOffset[21]~output_o\);

-- Location: IOOBUF_X52_Y27_N2
\validOffset[22]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(22),
	devoe => ww_devoe,
	o => \validOffset[22]~output_o\);

-- Location: IOOBUF_X50_Y41_N2
\validOffset[23]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(23),
	devoe => ww_devoe,
	o => \validOffset[23]~output_o\);

-- Location: IOOBUF_X52_Y23_N2
\validOffset[24]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(24),
	devoe => ww_devoe,
	o => \validOffset[24]~output_o\);

-- Location: IOOBUF_X48_Y0_N9
\validOffset[25]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(25),
	devoe => ww_devoe,
	o => \validOffset[25]~output_o\);

-- Location: IOOBUF_X52_Y23_N9
\validOffset[26]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(26),
	devoe => ww_devoe,
	o => \validOffset[26]~output_o\);

-- Location: IOOBUF_X52_Y16_N2
\validOffset[27]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(27),
	devoe => ww_devoe,
	o => \validOffset[27]~output_o\);

-- Location: IOOBUF_X48_Y41_N9
\validOffset[28]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(28),
	devoe => ww_devoe,
	o => \validOffset[28]~output_o\);

-- Location: IOOBUF_X46_Y41_N23
\validOffset[29]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(29),
	devoe => ww_devoe,
	o => \validOffset[29]~output_o\);

-- Location: IOOBUF_X46_Y41_N16
\validOffset[30]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(30),
	devoe => ww_devoe,
	o => \validOffset[30]~output_o\);

-- Location: IOOBUF_X52_Y30_N9
\validOffset[31]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => S_validOffset(31),
	devoe => ww_devoe,
	o => \validOffset[31]~output_o\);

-- Location: IOIBUF_X27_Y0_N15
\clock~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G17
\clock~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X52_Y31_N1
\ram_out[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(1),
	o => \ram_out[1]~input_o\);

-- Location: IOIBUF_X31_Y41_N1
\ram_out[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(0),
	o => \ram_out[0]~input_o\);

-- Location: LCCOMB_X25_Y29_N14
\ram_out2[0]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[0]~data_lut_combout\ = \ram_out2[0]~latch_combout\ $ (\ram_out[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[0]~latch_combout\,
	datad => \ram_out[0]~input_o\,
	combout => \ram_out2[0]~data_lut_combout\);

-- Location: IOIBUF_X27_Y0_N22
\reset~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G19
\reset~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y41_N1
\enable~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

-- Location: LCCOMB_X25_Y29_N4
\process_1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = (!\wr_ena~input_o\ & (\enable~input_o\ & !\Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_ena~input_o\,
	datac => \enable~input_o\,
	datad => \Equal1~4_combout\,
	combout => \process_1~0_combout\);

-- Location: FF_X25_Y29_N15
\ram_out2[0]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[0]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[0]~_emulated_q\);

-- Location: LCCOMB_X25_Y29_N12
\ram_out2[0]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[0]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[0]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[0]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[0]~latch_combout\,
	combout => \ram_out2[0]~latch_combout\);

-- Location: LCCOMB_X25_Y29_N8
\ram_out2[0]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[0]~head_lut_combout\ = (\reset~input_o\ & ((\ram_out2[0]~_emulated_q\ $ (\ram_out2[0]~latch_combout\)))) # (!\reset~input_o\ & (\ram_out[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[0]~input_o\,
	datab => \ram_out2[0]~_emulated_q\,
	datac => \reset~input_o\,
	datad => \ram_out2[0]~latch_combout\,
	combout => \ram_out2[0]~head_lut_combout\);

-- Location: LCCOMB_X25_Y29_N2
\ram_out2[1]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[1]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[1]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out[1]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[1]~latch_combout\,
	combout => \ram_out2[1]~latch_combout\);

-- Location: LCCOMB_X25_Y29_N20
\ram_out2[1]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[1]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[1]~_emulated_q\ $ (((\ram_out2[1]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[1]~_emulated_q\,
	datab => \ram_out[1]~input_o\,
	datac => \reset~input_o\,
	datad => \ram_out2[1]~latch_combout\,
	combout => \ram_out2[1]~head_lut_combout\);

-- Location: LCCOMB_X25_Y29_N18
\Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (\ram_out[0]~input_o\ & (\ram_out2[0]~head_lut_combout\ & (\ram_out[1]~input_o\ $ (!\ram_out2[1]~head_lut_combout\)))) # (!\ram_out[0]~input_o\ & (!\ram_out2[0]~head_lut_combout\ & (\ram_out[1]~input_o\ $ 
-- (!\ram_out2[1]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[0]~input_o\,
	datab => \ram_out[1]~input_o\,
	datac => \ram_out2[0]~head_lut_combout\,
	datad => \ram_out2[1]~head_lut_combout\,
	combout => \Equal1~0_combout\);

-- Location: IOIBUF_X23_Y41_N8
\ram_out[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(5),
	o => \ram_out[5]~input_o\);

-- Location: LCCOMB_X26_Y29_N10
\ram_out2[5]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[5]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[5]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out[5]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[5]~latch_combout\,
	combout => \ram_out2[5]~latch_combout\);

-- Location: LCCOMB_X26_Y29_N4
\ram_out2[5]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[5]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[5]~_emulated_q\ $ (((\ram_out2[5]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[5]~_emulated_q\,
	datab => \ram_out[5]~input_o\,
	datac => \reset~input_o\,
	datad => \ram_out2[5]~latch_combout\,
	combout => \ram_out2[5]~head_lut_combout\);

-- Location: LCCOMB_X26_Y29_N20
\ram_out2[4]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[4]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[4]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[4]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[4]~latch_combout\,
	combout => \ram_out2[4]~latch_combout\);

-- Location: IOIBUF_X21_Y41_N1
\ram_out[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(4),
	o => \ram_out[4]~input_o\);

-- Location: LCCOMB_X26_Y29_N22
\ram_out2[4]~data_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[4]~data_lut_combout\ = \ram_out2[4]~latch_combout\ $ (\ram_out[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out2[4]~latch_combout\,
	datad => \ram_out[4]~input_o\,
	combout => \ram_out2[4]~data_lut_combout\);

-- Location: FF_X26_Y29_N23
\ram_out2[4]~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_out2[4]~data_lut_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram_out2[4]~_emulated_q\);

-- Location: LCCOMB_X26_Y29_N24
\ram_out2[4]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[4]~head_lut_combout\ = (\reset~input_o\ & ((\ram_out2[4]~_emulated_q\ $ (\ram_out2[4]~latch_combout\)))) # (!\reset~input_o\ & (\ram_out[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[4]~input_o\,
	datab => \ram_out2[4]~_emulated_q\,
	datac => \ram_out2[4]~latch_combout\,
	datad => \reset~input_o\,
	combout => \ram_out2[4]~head_lut_combout\);

-- Location: LCCOMB_X26_Y29_N26
\Equal1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\ram_out[4]~input_o\ & (\ram_out2[4]~head_lut_combout\ & (\ram_out[5]~input_o\ $ (!\ram_out2[5]~head_lut_combout\)))) # (!\ram_out[4]~input_o\ & (!\ram_out2[4]~head_lut_combout\ & (\ram_out[5]~input_o\ $ 
-- (!\ram_out2[5]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[4]~input_o\,
	datab => \ram_out[5]~input_o\,
	datac => \ram_out2[5]~head_lut_combout\,
	datad => \ram_out2[4]~head_lut_combout\,
	combout => \Equal1~2_combout\);

-- Location: IOIBUF_X18_Y41_N8
\ram_out[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(2),
	o => \ram_out[2]~input_o\);

-- Location: LCCOMB_X26_Y29_N16
\ram_out2[2]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[2]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[2]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ram_out[2]~input_o\,
	datac => \reset~inputclkctrl_outclk\,
	datad => \ram_out2[2]~latch_combout\,
	combout => \ram_out2[2]~latch_combout\);

-- Location: LCCOMB_X26_Y29_N8
\ram_out2[2]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[2]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[2]~_emulated_q\ $ (((\ram_out2[2]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[2]~_emulated_q\,
	datab => \ram_out[2]~input_o\,
	datac => \reset~input_o\,
	datad => \ram_out2[2]~latch_combout\,
	combout => \ram_out2[2]~head_lut_combout\);

-- Location: IOIBUF_X25_Y41_N1
\ram_out[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ram_out(3),
	o => \ram_out[3]~input_o\);

-- Location: LCCOMB_X26_Y29_N6
\ram_out2[3]~latch\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[3]~latch_combout\ = (GLOBAL(\reset~inputclkctrl_outclk\) & ((\ram_out2[3]~latch_combout\))) # (!GLOBAL(\reset~inputclkctrl_outclk\) & (\ram_out[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[3]~input_o\,
	datac => \ram_out2[3]~latch_combout\,
	datad => \reset~inputclkctrl_outclk\,
	combout => \ram_out2[3]~latch_combout\);

-- Location: LCCOMB_X25_Y29_N28
\ram_out2[3]~head_lut\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_out2[3]~head_lut_combout\ = (\reset~input_o\ & (\ram_out2[3]~_emulated_q\ $ (((\ram_out2[3]~latch_combout\))))) # (!\reset~input_o\ & (((\ram_out[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out2[3]~_emulated_q\,
	datab => \ram_out[3]~input_o\,
	datac => \reset~input_o\,
	datad => \ram_out2[3]~latch_combout\,
	combout => \ram_out2[3]~head_lut_combout\);

-- Location: LCCOMB_X26_Y29_N0
\Equal1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (\ram_out[3]~input_o\ & (\ram_out2[3]~head_lut_combout\ & (\ram_out[2]~input_o\ $ (!\ram_out2[2]~head_lut_combout\)))) # (!\ram_out[3]~input_o\ & (!\ram_out2[3]~head_lut_combout\ & (\ram_out[2]~input_o\ $ 
-- (!\ram_out2[2]~head_lut_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[3]~input_o\,
	datab => \ram_out[2]~input_o\,
	datac => \ram_out2[2]~head_lut_combout\,
	datad => \ram_out2[3]~head_lut_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X26_Y30_N8
\Equal1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~3_combout\ & (\Equal1~0_combout\ & (\Equal1~2_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~3_combout\,
	datab => \Equal1~0_combout\,
	datac => \Equal1~2_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X25_Y29_N24
\temp_addr2[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp_addr2[0]~0_combout\ = (!\wr_ena~input_o\ & \enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_ena~input_o\,
	datac => \enable~input_o\,
	combout => \temp_addr2[0]~0_combout\);

-- Location: LCCOMB_X27_Y32_N14
\Add2~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~87_combout\ = (\Add2~58_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => temp_addr2(31),
	datad => \LessThan1~9_combout\,
	combout => \Add2~87_combout\);

-- Location: FF_X27_Y32_N15
\temp_addr2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~87_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(21));

-- Location: LCCOMB_X27_Y32_N6
\Add2~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~81_combout\ = (\Add2~46_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => temp_addr2(31),
	datad => \LessThan1~9_combout\,
	combout => \Add2~81_combout\);

-- Location: FF_X27_Y32_N7
\temp_addr2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~81_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(15));

-- Location: LCCOMB_X27_Y32_N20
\Add2~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~80_combout\ = (\Add2~44_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => temp_addr2(31),
	datad => \LessThan1~9_combout\,
	combout => \Add2~80_combout\);

-- Location: FF_X27_Y32_N21
\temp_addr2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(14));

-- Location: LCCOMB_X26_Y33_N0
\Add2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = temp_addr2(0) $ (VCC)
-- \Add2~5\ = CARRY(temp_addr2(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(0),
	datad => VCC,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X27_Y31_N18
\Add2~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~15_combout\ = (\Add2~4_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~4_combout\,
	combout => \Add2~15_combout\);

-- Location: FF_X27_Y31_N19
\temp_addr2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(0));

-- Location: LCCOMB_X26_Y33_N2
\Add2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (temp_addr2(1) & (!\Add2~5\)) # (!temp_addr2(1) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!temp_addr2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(1),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X26_Y33_N4
\Add2~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (temp_addr2(2) & (\Add2~7\ $ (GND))) # (!temp_addr2(2) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((temp_addr2(2) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(2),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X27_Y31_N4
\Add2~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (\Add2~8_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~8_combout\,
	datac => \LessThan1~9_combout\,
	datad => temp_addr2(31),
	combout => \Add2~16_combout\);

-- Location: FF_X27_Y31_N5
\temp_addr2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~16_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(2));

-- Location: LCCOMB_X26_Y33_N6
\Add2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (temp_addr2(3) & (!\Add2~9\)) # (!temp_addr2(3) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!temp_addr2(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(3),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X24_Y30_N8
\Add2~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~17_combout\ = (\Add2~10_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~10_combout\,
	datac => \LessThan1~9_combout\,
	datad => temp_addr2(31),
	combout => \Add2~17_combout\);

-- Location: FF_X24_Y30_N9
\temp_addr2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(3));

-- Location: LCCOMB_X26_Y33_N18
\Add2~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (temp_addr2(9) & (!\Add2~28\)) # (!temp_addr2(9) & ((\Add2~28\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~28\) # (!temp_addr2(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(9),
	datad => VCC,
	cin => \Add2~28\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X27_Y32_N16
\Add2~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (\Add2~30_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~30_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~32_combout\);

-- Location: FF_X27_Y32_N17
\temp_addr2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(9));

-- Location: LCCOMB_X26_Y33_N24
\Add2~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~39_combout\ = (temp_addr2(12) & (\Add2~37\ $ (GND))) # (!temp_addr2(12) & (!\Add2~37\ & VCC))
-- \Add2~40\ = CARRY((temp_addr2(12) & !\Add2~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(12),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~39_combout\,
	cout => \Add2~40\);

-- Location: LCCOMB_X27_Y32_N22
\Add2~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~41_combout\ = (\Add2~39_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~39_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~41_combout\);

-- Location: FF_X27_Y32_N23
\temp_addr2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~41_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(12));

-- Location: LCCOMB_X26_Y33_N26
\Add2~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (temp_addr2(13) & (!\Add2~40\)) # (!temp_addr2(13) & ((\Add2~40\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~40\) # (!temp_addr2(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(13),
	datad => VCC,
	cin => \Add2~40\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X27_Y32_N26
\Add2~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~79_combout\ = (\Add2~42_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~42_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~79_combout\);

-- Location: FF_X27_Y32_N27
\temp_addr2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~79_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(13));

-- Location: LCCOMB_X26_Y32_N0
\Add2~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (temp_addr2(16) & (\Add2~47\ $ (GND))) # (!temp_addr2(16) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((temp_addr2(16) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(16),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X27_Y32_N0
\Add2~82\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~82_combout\ = (\Add2~48_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~48_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~82_combout\);

-- Location: FF_X27_Y32_N1
\temp_addr2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~82_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(16));

-- Location: LCCOMB_X26_Y32_N6
\Add2~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (temp_addr2(19) & (!\Add2~53\)) # (!temp_addr2(19) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!temp_addr2(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(19),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X27_Y32_N24
\Add2~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~85_combout\ = (\Add2~54_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~54_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~85_combout\);

-- Location: FF_X27_Y32_N25
\temp_addr2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~85_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(19));

-- Location: LCCOMB_X26_Y32_N12
\Add2~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (temp_addr2(22) & (\Add2~59\ $ (GND))) # (!temp_addr2(22) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((temp_addr2(22) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(22),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X26_Y32_N14
\Add2~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = (temp_addr2(23) & (!\Add2~61\)) # (!temp_addr2(23) & ((\Add2~61\) # (GND)))
-- \Add2~63\ = CARRY((!\Add2~61\) # (!temp_addr2(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(23),
	datad => VCC,
	cin => \Add2~61\,
	combout => \Add2~62_combout\,
	cout => \Add2~63\);

-- Location: LCCOMB_X26_Y32_N18
\Add2~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~66_combout\ = (temp_addr2(25) & (!\Add2~65\)) # (!temp_addr2(25) & ((\Add2~65\) # (GND)))
-- \Add2~67\ = CARRY((!\Add2~65\) # (!temp_addr2(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(25),
	datad => VCC,
	cin => \Add2~65\,
	combout => \Add2~66_combout\,
	cout => \Add2~67\);

-- Location: LCCOMB_X25_Y32_N24
\Add2~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~91_combout\ = (\Add2~66_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datac => temp_addr2(31),
	datad => \Add2~66_combout\,
	combout => \Add2~91_combout\);

-- Location: FF_X25_Y32_N25
\temp_addr2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~91_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(25));

-- Location: LCCOMB_X26_Y32_N22
\Add2~70\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~70_combout\ = (temp_addr2(27) & (!\Add2~69\)) # (!temp_addr2(27) & ((\Add2~69\) # (GND)))
-- \Add2~71\ = CARRY((!\Add2~69\) # (!temp_addr2(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(27),
	datad => VCC,
	cin => \Add2~69\,
	combout => \Add2~70_combout\,
	cout => \Add2~71\);

-- Location: LCCOMB_X25_Y32_N28
\Add2~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~93_combout\ = (\Add2~70_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datac => temp_addr2(31),
	datad => \Add2~70_combout\,
	combout => \Add2~93_combout\);

-- Location: FF_X25_Y32_N29
\temp_addr2[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~93_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(27));

-- Location: LCCOMB_X26_Y32_N24
\Add2~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~72_combout\ = (temp_addr2(28) & (\Add2~71\ $ (GND))) # (!temp_addr2(28) & (!\Add2~71\ & VCC))
-- \Add2~73\ = CARRY((temp_addr2(28) & !\Add2~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(28),
	datad => VCC,
	cin => \Add2~71\,
	combout => \Add2~72_combout\,
	cout => \Add2~73\);

-- Location: LCCOMB_X25_Y32_N22
\Add2~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~94_combout\ = (\Add2~72_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datac => temp_addr2(31),
	datad => \Add2~72_combout\,
	combout => \Add2~94_combout\);

-- Location: FF_X25_Y32_N23
\temp_addr2[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~94_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(28));

-- Location: LCCOMB_X25_Y32_N8
\LessThan1~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~7_combout\ = (temp_addr2(26)) # ((temp_addr2(27)) # ((temp_addr2(28)) # (temp_addr2(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(26),
	datab => temp_addr2(27),
	datac => temp_addr2(28),
	datad => temp_addr2(25),
	combout => \LessThan1~7_combout\);

-- Location: LCCOMB_X27_Y32_N18
\LessThan1~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (temp_addr2(15)) # ((temp_addr2(16)) # ((temp_addr2(13)) # (temp_addr2(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(15),
	datab => temp_addr2(16),
	datac => temp_addr2(13),
	datad => temp_addr2(14),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X25_Y32_N0
\Add2~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~88_combout\ = (\Add2~60_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(31),
	datab => \Add2~60_combout\,
	datac => \LessThan1~9_combout\,
	combout => \Add2~88_combout\);

-- Location: FF_X25_Y32_N1
\temp_addr2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~88_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(22));

-- Location: LCCOMB_X25_Y32_N26
\Add2~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~89_combout\ = (\Add2~62_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(31),
	datab => \Add2~62_combout\,
	datac => \LessThan1~9_combout\,
	combout => \Add2~89_combout\);

-- Location: FF_X25_Y32_N27
\temp_addr2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~89_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(23));

-- Location: LCCOMB_X25_Y32_N6
\LessThan1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~6_combout\ = (temp_addr2(24)) # ((temp_addr2(22)) # ((temp_addr2(23)) # (temp_addr2(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(24),
	datab => temp_addr2(22),
	datac => temp_addr2(23),
	datad => temp_addr2(21),
	combout => \LessThan1~6_combout\);

-- Location: LCCOMB_X27_Y29_N20
\LessThan1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~8_combout\ = (\LessThan1~5_combout\) # ((\LessThan1~7_combout\) # ((\LessThan1~4_combout\) # (\LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => \LessThan1~7_combout\,
	datac => \LessThan1~4_combout\,
	datad => \LessThan1~6_combout\,
	combout => \LessThan1~8_combout\);

-- Location: LCCOMB_X26_Y32_N26
\Add2~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~74_combout\ = (temp_addr2(29) & (!\Add2~73\)) # (!temp_addr2(29) & ((\Add2~73\) # (GND)))
-- \Add2~75\ = CARRY((!\Add2~73\) # (!temp_addr2(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(29),
	datad => VCC,
	cin => \Add2~73\,
	combout => \Add2~74_combout\,
	cout => \Add2~75\);

-- Location: LCCOMB_X27_Y32_N8
\Add2~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~76_combout\ = (\Add2~74_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \Add2~74_combout\,
	datad => \LessThan1~9_combout\,
	combout => \Add2~76_combout\);

-- Location: FF_X27_Y32_N9
\temp_addr2[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(29));

-- Location: LCCOMB_X26_Y32_N28
\Add2~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~77_combout\ = (temp_addr2(30) & (\Add2~75\ $ (GND))) # (!temp_addr2(30) & (!\Add2~75\ & VCC))
-- \Add2~78\ = CARRY((temp_addr2(30) & !\Add2~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(30),
	datad => VCC,
	cin => \Add2~75\,
	combout => \Add2~77_combout\,
	cout => \Add2~78\);

-- Location: LCCOMB_X27_Y31_N30
\Add2~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~97_combout\ = (\Add2~77_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~77_combout\,
	combout => \Add2~97_combout\);

-- Location: FF_X27_Y31_N31
\temp_addr2[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~97_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(30));

-- Location: LCCOMB_X27_Y29_N30
\LessThan1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~9_combout\ = (\LessThan1~3_combout\) # ((\LessThan1~8_combout\) # ((temp_addr2(29)) # (temp_addr2(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~3_combout\,
	datab => \LessThan1~8_combout\,
	datac => temp_addr2(29),
	datad => temp_addr2(30),
	combout => \LessThan1~9_combout\);

-- Location: LCCOMB_X26_Y32_N30
\Add2~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~95_combout\ = \Add2~78\ $ (temp_addr2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp_addr2(31),
	cin => \Add2~78\,
	combout => \Add2~95_combout\);

-- Location: LCCOMB_X27_Y31_N0
\Add2~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~98_combout\ = (\Add2~95_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan1~9_combout\,
	datac => temp_addr2(31),
	datad => \Add2~95_combout\,
	combout => \Add2~98_combout\);

-- Location: FF_X27_Y31_N1
\temp_addr2[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~98_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(31));

-- Location: LCCOMB_X27_Y31_N24
\Add2~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (\Add2~6_combout\ & ((temp_addr2(31)) # (!\LessThan1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr2(31),
	datac => \LessThan1~9_combout\,
	datad => \Add2~6_combout\,
	combout => \Add2~14_combout\);

-- Location: FF_X27_Y31_N25
\temp_addr2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add2~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \temp_addr2[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(1));

-- Location: IOIBUF_X23_Y0_N1
\ctrl_out[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(4),
	o => \ctrl_out[4]~input_o\);

-- Location: IOIBUF_X18_Y41_N1
\ctrl_out[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(0),
	o => \ctrl_out[0]~input_o\);

-- Location: FF_X25_Y33_N17
\ram_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(0));

-- Location: IOIBUF_X25_Y41_N8
\ctrl_out[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(1),
	o => \ctrl_out[1]~input_o\);

-- Location: LCCOMB_X25_Y33_N18
\ram_in[1]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_in[1]~feeder_combout\ = \ctrl_out[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[1]~input_o\,
	combout => \ram_in[1]~feeder_combout\);

-- Location: FF_X25_Y33_N19
\ram_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_in[1]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(1));

-- Location: LCCOMB_X25_Y33_N16
\Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\ctrl_out[1]~input_o\ & (ram_in(1) & (\ctrl_out[0]~input_o\ $ (!ram_in(0))))) # (!\ctrl_out[1]~input_o\ & (!ram_in(1) & (\ctrl_out[0]~input_o\ $ (!ram_in(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_out[1]~input_o\,
	datab => \ctrl_out[0]~input_o\,
	datac => ram_in(0),
	datad => ram_in(1),
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X29_Y41_N8
\ctrl_out[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(6),
	o => \ctrl_out[6]~input_o\);

-- Location: FF_X25_Y28_N7
\ram_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(6));

-- Location: IOIBUF_X21_Y41_N8
\ctrl_out[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(7),
	o => \ctrl_out[7]~input_o\);

-- Location: LCCOMB_X25_Y28_N24
\ram_in[7]~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ram_in[7]~feeder_combout\ = \ctrl_out[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[7]~input_o\,
	combout => \ram_in[7]~feeder_combout\);

-- Location: FF_X25_Y28_N25
\ram_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \ram_in[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(7));

-- Location: LCCOMB_X25_Y28_N6
\Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\ctrl_out[7]~input_o\ & (ram_in(7) & (\ctrl_out[6]~input_o\ $ (!ram_in(6))))) # (!\ctrl_out[7]~input_o\ & (!ram_in(7) & (\ctrl_out[6]~input_o\ $ (!ram_in(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_out[7]~input_o\,
	datab => \ctrl_out[6]~input_o\,
	datac => ram_in(6),
	datad => ram_in(7),
	combout => \Equal0~3_combout\);

-- Location: FF_X25_Y33_N13
\ram_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(4));

-- Location: IOIBUF_X29_Y41_N1
\ctrl_out[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(5),
	o => \ctrl_out[5]~input_o\);

-- Location: FF_X25_Y28_N5
\ram_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => ram_in(5));

-- Location: LCCOMB_X25_Y33_N12
\Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\ctrl_out[5]~input_o\ & (ram_in(5) & (\ctrl_out[4]~input_o\ $ (!ram_in(4))))) # (!\ctrl_out[5]~input_o\ & (!ram_in(5) & (\ctrl_out[4]~input_o\ $ (!ram_in(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ctrl_out[5]~input_o\,
	datab => \ctrl_out[4]~input_o\,
	datac => ram_in(4),
	datad => ram_in(5),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X25_Y33_N14
\Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~1_combout\ & (\Equal0~0_combout\ & (\Equal0~3_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X25_Y29_N30
\process_0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = (!\wr_ena~input_o\ & (\enable~input_o\ & !\Equal0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_ena~input_o\,
	datac => \enable~input_o\,
	datad => \Equal0~4_combout\,
	combout => \process_0~0_combout\);

-- Location: LCCOMB_X25_Y35_N6
\Add0~85\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~85_combout\ = (\Add0~41_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	combout => \Add0~85_combout\);

-- Location: FF_X25_Y35_N7
\temp_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~85_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(16));

-- Location: LCCOMB_X24_Y34_N0
\Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = temp_addr(0) $ (VCC)
-- \Add0~5\ = CARRY(temp_addr(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(0),
	datad => VCC,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X25_Y34_N16
\Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~4_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~4_combout\,
	combout => \Add0~6_combout\);

-- Location: FF_X25_Y34_N17
\temp_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(0));

-- Location: LCCOMB_X24_Y34_N2
\Add0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = (temp_addr(1) & (!\Add0~5\)) # (!temp_addr(1) & ((\Add0~5\) # (GND)))
-- \Add0~8\ = CARRY((!\Add0~5\) # (!temp_addr(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(1),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~7_combout\,
	cout => \Add0~8\);

-- Location: LCCOMB_X25_Y34_N18
\Add0~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~7_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~7_combout\,
	combout => \Add0~9_combout\);

-- Location: FF_X25_Y34_N19
\temp_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(1));

-- Location: LCCOMB_X24_Y34_N4
\Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (temp_addr(2) & (\Add0~8\ $ (GND))) # (!temp_addr(2) & (!\Add0~8\ & VCC))
-- \Add0~11\ = CARRY((temp_addr(2) & !\Add0~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(2),
	datad => VCC,
	cin => \Add0~8\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X25_Y34_N4
\Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~10_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => temp_addr(31),
	datac => \Add0~10_combout\,
	combout => \Add0~12_combout\);

-- Location: FF_X25_Y34_N5
\temp_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(2));

-- Location: LCCOMB_X24_Y34_N6
\Add0~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = (temp_addr(3) & (!\Add0~11\)) # (!temp_addr(3) & ((\Add0~11\) # (GND)))
-- \Add0~14\ = CARRY((!\Add0~11\) # (!temp_addr(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~13_combout\,
	cout => \Add0~14\);

-- Location: LCCOMB_X24_Y34_N8
\Add0~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (temp_addr(4) & (\Add0~14\ $ (GND))) # (!temp_addr(4) & (!\Add0~14\ & VCC))
-- \Add0~17\ = CARRY((temp_addr(4) & !\Add0~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(4),
	datad => VCC,
	cin => \Add0~14\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: LCCOMB_X24_Y34_N12
\Add0~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (temp_addr(6) & (\Add0~20\ $ (GND))) # (!temp_addr(6) & (!\Add0~20\ & VCC))
-- \Add0~22\ = CARRY((temp_addr(6) & !\Add0~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(6),
	datad => VCC,
	cin => \Add0~20\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X25_Y35_N18
\Add0~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = (\Add0~21_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~21_combout\,
	combout => \Add0~74_combout\);

-- Location: FF_X25_Y35_N19
\temp_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(6));

-- Location: LCCOMB_X24_Y34_N16
\Add0~25\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~25_combout\ = (temp_addr(8) & (\Add0~24\ $ (GND))) # (!temp_addr(8) & (!\Add0~24\ & VCC))
-- \Add0~26\ = CARRY((temp_addr(8) & !\Add0~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(8),
	datad => VCC,
	cin => \Add0~24\,
	combout => \Add0~25_combout\,
	cout => \Add0~26\);

-- Location: LCCOMB_X25_Y35_N14
\Add0~76\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~76_combout\ = (\Add0~25_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~25_combout\,
	combout => \Add0~76_combout\);

-- Location: FF_X25_Y35_N15
\temp_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~76_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(8));

-- Location: LCCOMB_X24_Y34_N18
\Add0~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (temp_addr(9) & (!\Add0~26\)) # (!temp_addr(9) & ((\Add0~26\) # (GND)))
-- \Add0~28\ = CARRY((!\Add0~26\) # (!temp_addr(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(9),
	datad => VCC,
	cin => \Add0~26\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X25_Y35_N8
\Add0~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = (\Add0~27_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~27_combout\,
	combout => \Add0~77_combout\);

-- Location: FF_X25_Y35_N9
\temp_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~77_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(9));

-- Location: LCCOMB_X24_Y34_N22
\Add0~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (temp_addr(11) & (!\Add0~30\)) # (!temp_addr(11) & ((\Add0~30\) # (GND)))
-- \Add0~32\ = CARRY((!\Add0~30\) # (!temp_addr(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(11),
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~31_combout\,
	cout => \Add0~32\);

-- Location: LCCOMB_X25_Y35_N28
\Add0~79\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~79_combout\ = (\Add0~31_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~31_combout\,
	combout => \Add0~79_combout\);

-- Location: FF_X25_Y35_N29
\temp_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~79_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(11));

-- Location: LCCOMB_X24_Y34_N24
\Add0~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = (temp_addr(12) & (\Add0~32\ $ (GND))) # (!temp_addr(12) & (!\Add0~32\ & VCC))
-- \Add0~34\ = CARRY((temp_addr(12) & !\Add0~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(12),
	datad => VCC,
	cin => \Add0~32\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X25_Y35_N30
\Add0~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = (\Add0~33_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~33_combout\,
	combout => \Add0~80_combout\);

-- Location: FF_X25_Y35_N31
\temp_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(12));

-- Location: LCCOMB_X24_Y33_N4
\Add0~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = (temp_addr(18) & (\Add0~44\ $ (GND))) # (!temp_addr(18) & (!\Add0~44\ & VCC))
-- \Add0~46\ = CARRY((temp_addr(18) & !\Add0~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(18),
	datad => VCC,
	cin => \Add0~44\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X25_Y33_N26
\Add0~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = (\Add0~45_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(31),
	datac => \Add0~45_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add0~87_combout\);

-- Location: FF_X25_Y33_N27
\temp_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~87_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(18));

-- Location: LCCOMB_X24_Y33_N6
\Add0~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (temp_addr(19) & (!\Add0~46\)) # (!temp_addr(19) & ((\Add0~46\) # (GND)))
-- \Add0~48\ = CARRY((!\Add0~46\) # (!temp_addr(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(19),
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~47_combout\,
	cout => \Add0~48\);

-- Location: LCCOMB_X25_Y33_N4
\Add0~88\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~88_combout\ = (\Add0~47_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(31),
	datac => \Add0~47_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add0~88_combout\);

-- Location: FF_X25_Y33_N5
\temp_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~88_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(19));

-- Location: LCCOMB_X25_Y33_N0
\Add0~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = (\Add0~43_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~86_combout\);

-- Location: FF_X25_Y33_N1
\temp_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~86_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(17));

-- Location: LCCOMB_X25_Y33_N24
\LessThan0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (temp_addr(20)) # ((temp_addr(19)) # ((temp_addr(18)) # (temp_addr(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(20),
	datab => temp_addr(19),
	datac => temp_addr(18),
	datad => temp_addr(17),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X25_Y33_N20
\Add0~91\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~91_combout\ = (\Add0~53_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~91_combout\);

-- Location: FF_X25_Y33_N21
\temp_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~91_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(22));

-- Location: LCCOMB_X25_Y33_N10
\Add0~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\Add0~51_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~90_combout\);

-- Location: FF_X25_Y33_N11
\temp_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~90_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(21));

-- Location: LCCOMB_X24_Y33_N16
\Add0~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (temp_addr(24) & (\Add0~56\ $ (GND))) # (!temp_addr(24) & (!\Add0~56\ & VCC))
-- \Add0~58\ = CARRY((temp_addr(24) & !\Add0~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(24),
	datad => VCC,
	cin => \Add0~56\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X25_Y33_N8
\Add0~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = (\Add0~57_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(31),
	datac => \Add0~57_combout\,
	datad => \LessThan0~8_combout\,
	combout => \Add0~93_combout\);

-- Location: FF_X25_Y33_N9
\temp_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~93_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(24));

-- Location: LCCOMB_X24_Y33_N18
\Add0~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (temp_addr(25) & (!\Add0~58\)) # (!temp_addr(25) & ((\Add0~58\) # (GND)))
-- \Add0~60\ = CARRY((!\Add0~58\) # (!temp_addr(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(25),
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~59_combout\,
	cout => \Add0~60\);

-- Location: LCCOMB_X25_Y33_N28
\Add0~94\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~94_combout\ = (\Add0~59_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~59_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~94_combout\);

-- Location: FF_X25_Y33_N29
\temp_addr[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~94_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(25));

-- Location: LCCOMB_X24_Y33_N20
\Add0~61\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (temp_addr(26) & (\Add0~60\ $ (GND))) # (!temp_addr(26) & (!\Add0~60\ & VCC))
-- \Add0~62\ = CARRY((temp_addr(26) & !\Add0~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(26),
	datad => VCC,
	cin => \Add0~60\,
	combout => \Add0~61_combout\,
	cout => \Add0~62\);

-- Location: LCCOMB_X25_Y35_N26
\Add0~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = (\Add0~61_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~61_combout\,
	combout => \Add0~95_combout\);

-- Location: FF_X25_Y35_N27
\temp_addr[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~95_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(26));

-- Location: LCCOMB_X24_Y33_N22
\Add0~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = (temp_addr(27) & (!\Add0~62\)) # (!temp_addr(27) & ((\Add0~62\) # (GND)))
-- \Add0~64\ = CARRY((!\Add0~62\) # (!temp_addr(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(27),
	datad => VCC,
	cin => \Add0~62\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X25_Y33_N22
\Add0~96\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\Add0~63_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~63_combout\,
	datac => temp_addr(31),
	datad => \LessThan0~8_combout\,
	combout => \Add0~96_combout\);

-- Location: FF_X25_Y33_N23
\temp_addr[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~96_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(27));

-- Location: LCCOMB_X25_Y35_N22
\LessThan0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (temp_addr(25)) # ((temp_addr(28)) # ((temp_addr(26)) # (temp_addr(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(25),
	datab => temp_addr(28),
	datac => temp_addr(26),
	datad => temp_addr(27),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X25_Y33_N2
\LessThan0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (temp_addr(23)) # ((temp_addr(22)) # ((temp_addr(24)) # (temp_addr(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(23),
	datab => temp_addr(22),
	datac => temp_addr(24),
	datad => temp_addr(21),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X25_Y34_N20
\LessThan0~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (\LessThan0~3_combout\) # ((\LessThan0~4_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~3_combout\,
	datab => \LessThan0~4_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~5_combout\,
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X25_Y34_N22
\mem~460\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~460_combout\ = (temp_addr(3) & (temp_addr(1) & (temp_addr(2) & temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~460_combout\);

-- Location: LCCOMB_X25_Y35_N10
\Add0~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~29_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	combout => \Add0~78_combout\);

-- Location: FF_X25_Y35_N11
\temp_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~78_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(10));

-- Location: LCCOMB_X25_Y34_N28
\LessThan0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (temp_addr(11)) # ((temp_addr(10)) # ((temp_addr(9)) # (temp_addr(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(11),
	datab => temp_addr(10),
	datac => temp_addr(9),
	datad => temp_addr(12),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X25_Y34_N14
\LessThan0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\LessThan0~0_combout\) # ((\LessThan0~1_combout\) # ((temp_addr(4) & \mem~460_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => temp_addr(4),
	datac => \mem~460_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X25_Y34_N30
\LessThan0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (temp_addr(30)) # ((\LessThan0~7_combout\) # ((\LessThan0~2_combout\) # (temp_addr(29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(30),
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~2_combout\,
	datad => temp_addr(29),
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X24_Y33_N24
\Add0~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = (temp_addr(28) & (\Add0~64\ $ (GND))) # (!temp_addr(28) & (!\Add0~64\ & VCC))
-- \Add0~66\ = CARRY((temp_addr(28) & !\Add0~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(28),
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~65_combout\,
	cout => \Add0~66\);

-- Location: LCCOMB_X25_Y35_N4
\Add0~97\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~97_combout\ = (\Add0~65_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~65_combout\,
	combout => \Add0~97_combout\);

-- Location: FF_X25_Y35_N5
\temp_addr[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~97_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(28));

-- Location: LCCOMB_X24_Y33_N26
\Add0~67\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~67_combout\ = (temp_addr(29) & (!\Add0~66\)) # (!temp_addr(29) & ((\Add0~66\) # (GND)))
-- \Add0~68\ = CARRY((!\Add0~66\) # (!temp_addr(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(29),
	datad => VCC,
	cin => \Add0~66\,
	combout => \Add0~67_combout\,
	cout => \Add0~68\);

-- Location: LCCOMB_X25_Y34_N0
\Add0~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = (\Add0~67_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => \Add0~67_combout\,
	datac => temp_addr(31),
	combout => \Add0~81_combout\);

-- Location: FF_X25_Y34_N1
\temp_addr[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~81_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(29));

-- Location: LCCOMB_X24_Y33_N30
\Add0~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \Add0~70\ $ (temp_addr(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => temp_addr(31),
	cin => \Add0~70\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X25_Y34_N8
\Add0~98\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (\Add0~71_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datac => temp_addr(31),
	datad => \Add0~71_combout\,
	combout => \Add0~98_combout\);

-- Location: FF_X25_Y34_N9
\temp_addr[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~98_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(31));

-- Location: LCCOMB_X25_Y34_N24
\Add0~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~16_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => temp_addr(31),
	datac => \LessThan0~8_combout\,
	datad => \Add0~16_combout\,
	combout => \Add0~18_combout\);

-- Location: FF_X25_Y34_N25
\temp_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(4));

-- Location: LCCOMB_X26_Y31_N22
\mem~461\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~461_combout\ = (\mem~460_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & !temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~460_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~461_combout\);

-- Location: FF_X26_Y31_N3
\mem~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~138_q\);

-- Location: LCCOMB_X25_Y34_N6
\Add0~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = (\Add0~13_combout\ & ((temp_addr(31)) # (!\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~8_combout\,
	datab => temp_addr(31),
	datac => \Add0~13_combout\,
	combout => \Add0~15_combout\);

-- Location: FF_X25_Y34_N7
\temp_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add0~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr(3));

-- Location: LCCOMB_X25_Y31_N8
\mem~454\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~454_combout\ = (temp_addr(1) & (temp_addr(2) & (!temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~454_combout\);

-- Location: LCCOMB_X24_Y29_N2
\mem~455\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~455_combout\ = (!temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~454_combout\,
	combout => \mem~455_combout\);

-- Location: FF_X26_Y31_N25
\mem~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~455_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~130_q\);

-- Location: LCCOMB_X26_Y31_N2
\mem~358\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~358_combout\ = (\mem~357_combout\ & (((\mem~138_q\)) # (!temp_addr2(1)))) # (!\mem~357_combout\ & (temp_addr2(1) & ((\mem~130_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~357_combout\,
	datab => temp_addr2(1),
	datac => \mem~138_q\,
	datad => \mem~130_q\,
	combout => \mem~358_combout\);

-- Location: LCCOMB_X28_Y30_N28
\mem~434\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~434_combout\ = (!temp_addr(3) & (!temp_addr(1) & (temp_addr(2) & !temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~434_combout\);

-- Location: LCCOMB_X28_Y30_N30
\mem~435\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~435_combout\ = (!temp_addr(4) & (\mem~434_combout\ & (\reset~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \mem~434_combout\,
	datac => \reset~input_o\,
	datad => \process_0~0_combout\,
	combout => \mem~435_combout\);

-- Location: FF_X26_Y28_N9
\mem~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~50_q\);

-- Location: LCCOMB_X26_Y28_N8
\mem~350\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~350_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~58_q\)) # (!temp_addr2(0) & ((\mem~50_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~58_q\,
	datab => temp_addr2(1),
	datac => \mem~50_q\,
	datad => temp_addr2(0),
	combout => \mem~350_combout\);

-- Location: LCCOMB_X25_Y28_N10
\mem~436\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~436_combout\ = (temp_addr(2) & (temp_addr(1) & (temp_addr(0) & !temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(2),
	datab => temp_addr(1),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~436_combout\);

-- Location: LCCOMB_X25_Y28_N28
\mem~437\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~437_combout\ = (\reset~input_o\ & (!temp_addr(4) & (\process_0~0_combout\ & \mem~436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp_addr(4),
	datac => \process_0~0_combout\,
	datad => \mem~436_combout\,
	combout => \mem~437_combout\);

-- Location: FF_X26_Y28_N27
\mem~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~74_q\);

-- Location: LCCOMB_X26_Y28_N26
\mem~351\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~351_combout\ = (\mem~350_combout\ & (((\mem~74_q\) # (!temp_addr2(1))))) # (!\mem~350_combout\ & (\mem~66_q\ & ((temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~66_q\,
	datab => \mem~350_combout\,
	datac => \mem~74_q\,
	datad => temp_addr2(1),
	combout => \mem~351_combout\);

-- Location: LCCOMB_X24_Y30_N20
\mem~453\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~453_combout\ = (\mem~452_combout\ & (!temp_addr(4) & (\reset~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~452_combout\,
	datab => temp_addr(4),
	datac => \reset~input_o\,
	datad => \process_0~0_combout\,
	combout => \mem~453_combout\);

-- Location: FF_X26_Y27_N27
\mem~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~42_q\);

-- Location: LCCOMB_X25_Y34_N12
\mem~448\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~448_combout\ = (!temp_addr(3) & (temp_addr(1) & (!temp_addr(2) & !temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~448_combout\);

-- Location: LCCOMB_X27_Y27_N20
\mem~449\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~449_combout\ = (!temp_addr(4) & (\reset~input_o\ & (\mem~448_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \mem~448_combout\,
	datad => \process_0~0_combout\,
	combout => \mem~449_combout\);

-- Location: FF_X27_Y27_N27
\mem~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~34_q\);

-- Location: LCCOMB_X28_Y30_N8
\mem~450\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~450_combout\ = (!temp_addr(3) & (!temp_addr(1) & (!temp_addr(2) & !temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~450_combout\);

-- Location: LCCOMB_X28_Y30_N26
\mem~451\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~451_combout\ = (!temp_addr(4) & (\mem~450_combout\ & (\reset~input_o\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \mem~450_combout\,
	datac => \reset~input_o\,
	datad => \process_0~0_combout\,
	combout => \mem~451_combout\);

-- Location: FF_X26_Y27_N9
\mem~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~18_q\);

-- Location: LCCOMB_X26_Y27_N8
\mem~354\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~354_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~34_q\)) # (!temp_addr2(1) & ((\mem~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~34_q\,
	datac => \mem~18_q\,
	datad => temp_addr2(1),
	combout => \mem~354_combout\);

-- Location: LCCOMB_X26_Y27_N26
\mem~355\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~355_combout\ = (temp_addr2(0) & ((\mem~354_combout\ & ((\mem~42_q\))) # (!\mem~354_combout\ & (\mem~26_q\)))) # (!temp_addr2(0) & (((\mem~354_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~26_q\,
	datab => temp_addr2(0),
	datac => \mem~42_q\,
	datad => \mem~354_combout\,
	combout => \mem~355_combout\);

-- Location: LCCOMB_X24_Y29_N16
\mem~445\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~445_combout\ = (\mem~444_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & !temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~444_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~445_combout\);

-- Location: FF_X28_Y27_N19
\mem~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~106_q\);

-- Location: LCCOMB_X25_Y31_N4
\mem~442\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~442_combout\ = (!temp_addr(1) & (!temp_addr(2) & (!temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~442_combout\);

-- Location: LCCOMB_X24_Y29_N6
\mem~443\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~443_combout\ = (!temp_addr(4) & (\mem~442_combout\ & (\process_0~0_combout\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \mem~442_combout\,
	datac => \process_0~0_combout\,
	datad => \reset~input_o\,
	combout => \mem~443_combout\);

-- Location: FF_X28_Y27_N9
\mem~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[4]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~82_q\);

-- Location: LCCOMB_X28_Y27_N8
\mem~352\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~352_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~98_q\)) # (!temp_addr2(1) & ((\mem~82_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~98_q\,
	datab => temp_addr2(0),
	datac => \mem~82_q\,
	datad => temp_addr2(1),
	combout => \mem~352_combout\);

-- Location: LCCOMB_X28_Y27_N18
\mem~353\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~353_combout\ = (temp_addr2(0) & ((\mem~352_combout\ & ((\mem~106_q\))) # (!\mem~352_combout\ & (\mem~90_q\)))) # (!temp_addr2(0) & (((\mem~352_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~90_q\,
	datab => temp_addr2(0),
	datac => \mem~106_q\,
	datad => \mem~352_combout\,
	combout => \mem~353_combout\);

-- Location: LCCOMB_X27_Y30_N12
\mem~356\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~356_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & ((\mem~353_combout\))) # (!temp_addr2(3) & (\mem~355_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~355_combout\,
	datad => \mem~353_combout\,
	combout => \mem~356_combout\);

-- Location: LCCOMB_X27_Y30_N30
\mem~359\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~359_combout\ = (temp_addr2(2) & ((\mem~356_combout\ & (\mem~358_combout\)) # (!\mem~356_combout\ & ((\mem~351_combout\))))) # (!temp_addr2(2) & (((\mem~356_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~358_combout\,
	datac => \mem~351_combout\,
	datad => \mem~356_combout\,
	combout => \mem~359_combout\);

-- Location: LCCOMB_X26_Y30_N4
\Equal2~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = \ram_out[4]~input_o\ $ (((temp_addr2(4) & (\mem~369_combout\)) # (!temp_addr2(4) & ((\mem~359_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~369_combout\,
	datab => \ram_out[4]~input_o\,
	datac => temp_addr2(4),
	datad => \mem~359_combout\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X29_Y29_N10
\mem~99feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~99feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~99feeder_combout\);

-- Location: LCCOMB_X24_Y29_N28
\mem~441\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~441_combout\ = (\mem~440_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & !temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~440_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~441_combout\);

-- Location: FF_X29_Y29_N11
\mem~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~99feeder_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~99_q\);

-- Location: FF_X28_Y27_N31
\mem~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~107_q\);

-- Location: FF_X28_Y27_N13
\mem~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~83_q\);

-- Location: LCCOMB_X28_Y27_N12
\mem~370\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~370_combout\ = (temp_addr2(0) & ((\mem~91_q\) # ((temp_addr2(1))))) # (!temp_addr2(0) & (((\mem~83_q\ & !temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~91_q\,
	datab => temp_addr2(0),
	datac => \mem~83_q\,
	datad => temp_addr2(1),
	combout => \mem~370_combout\);

-- Location: LCCOMB_X28_Y27_N30
\mem~371\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~371_combout\ = (temp_addr2(1) & ((\mem~370_combout\ & ((\mem~107_q\))) # (!\mem~370_combout\ & (\mem~99_q\)))) # (!temp_addr2(1) & (((\mem~370_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~99_q\,
	datac => \mem~107_q\,
	datad => \mem~370_combout\,
	combout => \mem~371_combout\);

-- Location: FF_X26_Y27_N31
\mem~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~43_q\);

-- Location: FF_X26_Y27_N13
\mem~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~19_q\);

-- Location: LCCOMB_X26_Y27_N12
\mem~374\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~374_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~27_q\)) # (!temp_addr2(0) & ((\mem~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~27_q\,
	datab => temp_addr2(1),
	datac => \mem~19_q\,
	datad => temp_addr2(0),
	combout => \mem~374_combout\);

-- Location: LCCOMB_X26_Y27_N30
\mem~375\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~375_combout\ = (temp_addr2(1) & ((\mem~374_combout\ & ((\mem~43_q\))) # (!\mem~374_combout\ & (\mem~35_q\)))) # (!temp_addr2(1) & (((\mem~374_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~35_q\,
	datab => temp_addr2(1),
	datac => \mem~43_q\,
	datad => \mem~374_combout\,
	combout => \mem~375_combout\);

-- Location: FF_X26_Y28_N15
\mem~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~75_q\);

-- Location: FF_X26_Y28_N13
\mem~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~51_q\);

-- Location: LCCOMB_X26_Y28_N12
\mem~372\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~372_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~67_q\)) # (!temp_addr2(1) & ((\mem~51_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~67_q\,
	datab => temp_addr2(0),
	datac => \mem~51_q\,
	datad => temp_addr2(1),
	combout => \mem~372_combout\);

-- Location: LCCOMB_X26_Y28_N14
\mem~373\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~373_combout\ = (temp_addr2(0) & ((\mem~372_combout\ & ((\mem~75_q\))) # (!\mem~372_combout\ & (\mem~59_q\)))) # (!temp_addr2(0) & (((\mem~372_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~59_q\,
	datab => temp_addr2(0),
	datac => \mem~75_q\,
	datad => \mem~372_combout\,
	combout => \mem~373_combout\);

-- Location: LCCOMB_X27_Y28_N10
\mem~376\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~376_combout\ = (temp_addr2(2) & ((temp_addr2(3)) # ((\mem~373_combout\)))) # (!temp_addr2(2) & (!temp_addr2(3) & (\mem~375_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~375_combout\,
	datad => \mem~373_combout\,
	combout => \mem~376_combout\);

-- Location: LCCOMB_X27_Y28_N20
\mem~379\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~379_combout\ = (temp_addr2(3) & ((\mem~376_combout\ & (\mem~378_combout\)) # (!\mem~376_combout\ & ((\mem~371_combout\))))) # (!temp_addr2(3) & (((\mem~376_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~378_combout\,
	datab => temp_addr2(3),
	datac => \mem~371_combout\,
	datad => \mem~376_combout\,
	combout => \mem~379_combout\);

-- Location: LCCOMB_X29_Y29_N28
\mem~195feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~195feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~195feeder_combout\);

-- Location: LCCOMB_X28_Y30_N2
\mem~430\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~430_combout\ = (!temp_addr(3) & (temp_addr(1) & (temp_addr(2) & !temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~430_combout\);

-- Location: LCCOMB_X24_Y29_N0
\mem~467\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~467_combout\ = (temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~430_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~430_combout\,
	combout => \mem~467_combout\);

-- Location: FF_X29_Y29_N29
\mem~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~195feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~195_q\);

-- Location: LCCOMB_X24_Y29_N18
\mem~469\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~469_combout\ = (temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~454_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~454_combout\,
	combout => \mem~469_combout\);

-- Location: FF_X28_Y29_N31
\mem~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~259_q\);

-- Location: LCCOMB_X24_Y29_N30
\mem~466\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~466_combout\ = (\mem~440_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~440_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~466_combout\);

-- Location: FF_X28_Y28_N21
\mem~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~227_q\);

-- Location: LCCOMB_X27_Y27_N22
\mem~468\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~468_combout\ = (\mem~448_combout\ & (\reset~input_o\ & (temp_addr(4) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~448_combout\,
	datab => \reset~input_o\,
	datac => temp_addr(4),
	datad => \process_0~0_combout\,
	combout => \mem~468_combout\);

-- Location: FF_X28_Y29_N29
\mem~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~163_q\);

-- Location: LCCOMB_X28_Y29_N28
\mem~380\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~380_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~227_q\)) # (!temp_addr2(3) & ((\mem~163_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~227_q\,
	datac => \mem~163_q\,
	datad => temp_addr2(3),
	combout => \mem~380_combout\);

-- Location: LCCOMB_X28_Y29_N30
\mem~381\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~381_combout\ = (temp_addr2(2) & ((\mem~380_combout\ & ((\mem~259_q\))) # (!\mem~380_combout\ & (\mem~195_q\)))) # (!temp_addr2(2) & (((\mem~380_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~195_q\,
	datac => \mem~259_q\,
	datad => \mem~380_combout\,
	combout => \mem~381_combout\);

-- Location: LCCOMB_X28_Y30_N10
\mem~179feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~179feeder_combout\ = \ctrl_out[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[5]~input_o\,
	combout => \mem~179feeder_combout\);

-- Location: LCCOMB_X28_Y30_N20
\mem~471\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~471_combout\ = (\reset~input_o\ & (\mem~434_combout\ & (temp_addr(4) & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \mem~434_combout\,
	datac => temp_addr(4),
	datad => \process_0~0_combout\,
	combout => \mem~471_combout\);

-- Location: FF_X28_Y30_N11
\mem~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~179feeder_combout\,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~179_q\);

-- Location: LCCOMB_X27_Y31_N2
\mem~458\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~458_combout\ = (temp_addr(3) & (!temp_addr(1) & (!temp_addr(0) & temp_addr(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(0),
	datad => temp_addr(2),
	combout => \mem~458_combout\);

-- Location: LCCOMB_X27_Y31_N14
\mem~473\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~473_combout\ = (temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~458_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~458_combout\,
	combout => \mem~473_combout\);

-- Location: FF_X27_Y28_N9
\mem~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~243_q\);

-- Location: LCCOMB_X28_Y30_N14
\mem~472\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~472_combout\ = (\reset~input_o\ & (temp_addr(4) & (\mem~450_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp_addr(4),
	datac => \mem~450_combout\,
	datad => \process_0~0_combout\,
	combout => \mem~472_combout\);

-- Location: FF_X27_Y30_N25
\mem~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~147_q\);

-- Location: LCCOMB_X24_Y29_N20
\mem~470\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~470_combout\ = (temp_addr(4) & (\mem~442_combout\ & (\process_0~0_combout\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \mem~442_combout\,
	datac => \process_0~0_combout\,
	datad => \reset~input_o\,
	combout => \mem~470_combout\);

-- Location: FF_X28_Y28_N15
\mem~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~211_q\);

-- Location: LCCOMB_X27_Y30_N24
\mem~384\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~384_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & ((\mem~211_q\))) # (!temp_addr2(3) & (\mem~147_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~147_q\,
	datad => \mem~211_q\,
	combout => \mem~384_combout\);

-- Location: LCCOMB_X27_Y28_N8
\mem~385\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~385_combout\ = (temp_addr2(2) & ((\mem~384_combout\ & ((\mem~243_q\))) # (!\mem~384_combout\ & (\mem~179_q\)))) # (!temp_addr2(2) & (((\mem~384_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~179_q\,
	datac => \mem~243_q\,
	datad => \mem~384_combout\,
	combout => \mem~385_combout\);

-- Location: LCCOMB_X25_Y31_N18
\mem~456\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~456_combout\ = (!temp_addr(1) & (temp_addr(2) & (temp_addr(0) & temp_addr(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(1),
	datab => temp_addr(2),
	datac => temp_addr(0),
	datad => temp_addr(3),
	combout => \mem~456_combout\);

-- Location: LCCOMB_X25_Y31_N6
\mem~465\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~465_combout\ = (\process_0~0_combout\ & (temp_addr(4) & (\reset~input_o\ & \mem~456_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => temp_addr(4),
	datac => \reset~input_o\,
	datad => \mem~456_combout\,
	combout => \mem~465_combout\);

-- Location: FF_X27_Y28_N7
\mem~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~251_q\);

-- Location: LCCOMB_X25_Y34_N2
\mem~432\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~432_combout\ = (!temp_addr(3) & (!temp_addr(1) & (temp_addr(2) & temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(3),
	datab => temp_addr(1),
	datac => temp_addr(2),
	datad => temp_addr(0),
	combout => \mem~432_combout\);

-- Location: LCCOMB_X23_Y28_N22
\mem~462\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~462_combout\ = (\reset~input_o\ & (temp_addr(4) & (\process_0~0_combout\ & \mem~432_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp_addr(4),
	datac => \process_0~0_combout\,
	datad => \mem~432_combout\,
	combout => \mem~462_combout\);

-- Location: FF_X24_Y31_N17
\mem~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~462_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~187_q\);

-- Location: LCCOMB_X24_Y28_N2
\mem~446\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~446_combout\ = (temp_addr(0) & (!temp_addr(3) & (!temp_addr(2) & !temp_addr(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(0),
	datab => temp_addr(3),
	datac => temp_addr(2),
	datad => temp_addr(1),
	combout => \mem~446_combout\);

-- Location: LCCOMB_X24_Y28_N30
\mem~464\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~464_combout\ = (temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~446_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~446_combout\,
	combout => \mem~464_combout\);

-- Location: FF_X24_Y28_N27
\mem~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~155_q\);

-- Location: LCCOMB_X24_Y28_N26
\mem~382\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~382_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~187_q\)) # (!temp_addr2(2) & ((\mem~155_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~187_q\,
	datac => \mem~155_q\,
	datad => temp_addr2(2),
	combout => \mem~382_combout\);

-- Location: LCCOMB_X27_Y28_N6
\mem~383\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~383_combout\ = (temp_addr2(3) & ((\mem~382_combout\ & ((\mem~251_q\))) # (!\mem~382_combout\ & (\mem~219_q\)))) # (!temp_addr2(3) & (((\mem~382_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~219_q\,
	datab => temp_addr2(3),
	datac => \mem~251_q\,
	datad => \mem~382_combout\,
	combout => \mem~383_combout\);

-- Location: LCCOMB_X27_Y28_N26
\mem~386\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~386_combout\ = (temp_addr2(0) & ((temp_addr2(1)) # ((\mem~383_combout\)))) # (!temp_addr2(0) & (!temp_addr2(1) & (\mem~385_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~385_combout\,
	datad => \mem~383_combout\,
	combout => \mem~386_combout\);

-- Location: LCCOMB_X23_Y30_N30
\mem~477\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~477_combout\ = (\reset~input_o\ & (temp_addr(4) & (\mem~460_combout\ & \process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => temp_addr(4),
	datac => \mem~460_combout\,
	datad => \process_0~0_combout\,
	combout => \mem~477_combout\);

-- Location: FF_X23_Y30_N7
\mem~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~267_q\);

-- Location: LCCOMB_X24_Y30_N10
\mem~452\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~452_combout\ = (!temp_addr(2) & (!temp_addr(3) & (temp_addr(1) & temp_addr(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(2),
	datab => temp_addr(3),
	datac => temp_addr(1),
	datad => temp_addr(0),
	combout => \mem~452_combout\);

-- Location: LCCOMB_X24_Y30_N14
\mem~476\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~476_combout\ = (\process_0~0_combout\ & (temp_addr(4) & (\reset~input_o\ & \mem~452_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => temp_addr(4),
	datac => \reset~input_o\,
	datad => \mem~452_combout\,
	combout => \mem~476_combout\);

-- Location: FF_X24_Y30_N29
\mem~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[5]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~171_q\);

-- Location: LCCOMB_X24_Y30_N28
\mem~387\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~387_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~203_q\)) # (!temp_addr2(2) & ((\mem~171_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~203_q\,
	datab => temp_addr2(3),
	datac => \mem~171_q\,
	datad => temp_addr2(2),
	combout => \mem~387_combout\);

-- Location: LCCOMB_X23_Y30_N6
\mem~388\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~388_combout\ = (temp_addr2(3) & ((\mem~387_combout\ & ((\mem~267_q\))) # (!\mem~387_combout\ & (\mem~235_q\)))) # (!temp_addr2(3) & (((\mem~387_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~235_q\,
	datab => temp_addr2(3),
	datac => \mem~267_q\,
	datad => \mem~387_combout\,
	combout => \mem~388_combout\);

-- Location: LCCOMB_X27_Y28_N12
\mem~389\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~389_combout\ = (temp_addr2(1) & ((\mem~386_combout\ & ((\mem~388_combout\))) # (!\mem~386_combout\ & (\mem~381_combout\)))) # (!temp_addr2(1) & (((\mem~386_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~381_combout\,
	datac => \mem~386_combout\,
	datad => \mem~388_combout\,
	combout => \mem~389_combout\);

-- Location: LCCOMB_X26_Y30_N14
\Equal2~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = \ram_out[5]~input_o\ $ (((temp_addr2(4) & ((\mem~389_combout\))) # (!temp_addr2(4) & (\mem~379_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[5]~input_o\,
	datab => temp_addr2(4),
	datac => \mem~379_combout\,
	datad => \mem~389_combout\,
	combout => \Equal2~6_combout\);

-- Location: FF_X28_Y27_N11
\mem~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~108_q\);

-- Location: FF_X28_Y27_N1
\mem~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~84_q\);

-- Location: LCCOMB_X29_Y29_N6
\mem~100feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~100feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~100feeder_combout\);

-- Location: FF_X29_Y29_N7
\mem~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~100feeder_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~100_q\);

-- Location: LCCOMB_X28_Y27_N0
\mem~392\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~392_combout\ = (temp_addr2(1) & ((temp_addr2(0)) # ((\mem~100_q\)))) # (!temp_addr2(1) & (!temp_addr2(0) & (\mem~84_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~84_q\,
	datad => \mem~100_q\,
	combout => \mem~392_combout\);

-- Location: LCCOMB_X28_Y27_N10
\mem~393\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~393_combout\ = (temp_addr2(0) & ((\mem~392_combout\ & ((\mem~108_q\))) # (!\mem~392_combout\ & (\mem~92_q\)))) # (!temp_addr2(0) & (((\mem~392_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~92_q\,
	datab => temp_addr2(0),
	datac => \mem~108_q\,
	datad => \mem~392_combout\,
	combout => \mem~393_combout\);

-- Location: FF_X26_Y27_N3
\mem~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~44_q\);

-- Location: LCCOMB_X27_Y27_N14
\mem~36feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~36feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~36feeder_combout\);

-- Location: FF_X27_Y27_N15
\mem~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~36feeder_combout\,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~36_q\);

-- Location: FF_X26_Y27_N17
\mem~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~20_q\);

-- Location: LCCOMB_X26_Y27_N16
\mem~394\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~394_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~36_q\)) # (!temp_addr2(1) & ((\mem~20_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~36_q\,
	datac => \mem~20_q\,
	datad => temp_addr2(1),
	combout => \mem~394_combout\);

-- Location: LCCOMB_X26_Y27_N2
\mem~395\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~395_combout\ = (temp_addr2(0) & ((\mem~394_combout\ & ((\mem~44_q\))) # (!\mem~394_combout\ & (\mem~28_q\)))) # (!temp_addr2(0) & (((\mem~394_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~28_q\,
	datab => temp_addr2(0),
	datac => \mem~44_q\,
	datad => \mem~394_combout\,
	combout => \mem~395_combout\);

-- Location: LCCOMB_X27_Y28_N30
\mem~396\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~396_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~393_combout\)) # (!temp_addr2(3) & ((\mem~395_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~393_combout\,
	datad => \mem~395_combout\,
	combout => \mem~396_combout\);

-- Location: FF_X26_Y31_N19
\mem~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~140_q\);

-- Location: LCCOMB_X27_Y31_N12
\mem~459\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~459_combout\ = (!temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~458_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~458_combout\,
	combout => \mem~459_combout\);

-- Location: FF_X27_Y31_N27
\mem~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~116_q\);

-- Location: LCCOMB_X25_Y31_N20
\mem~457\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~457_combout\ = (\process_0~0_combout\ & (!temp_addr(4) & (\reset~input_o\ & \mem~456_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \process_0~0_combout\,
	datab => temp_addr(4),
	datac => \reset~input_o\,
	datad => \mem~456_combout\,
	combout => \mem~457_combout\);

-- Location: FF_X25_Y31_N29
\mem~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~124_q\);

-- Location: LCCOMB_X27_Y31_N26
\mem~397\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~397_combout\ = (temp_addr2(1) & (temp_addr2(0))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~124_q\))) # (!temp_addr2(0) & (\mem~116_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~116_q\,
	datad => \mem~124_q\,
	combout => \mem~397_combout\);

-- Location: LCCOMB_X26_Y31_N18
\mem~398\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~398_combout\ = (temp_addr2(1) & ((\mem~397_combout\ & ((\mem~140_q\))) # (!\mem~397_combout\ & (\mem~132_q\)))) # (!temp_addr2(1) & (((\mem~397_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~132_q\,
	datab => temp_addr2(1),
	datac => \mem~140_q\,
	datad => \mem~397_combout\,
	combout => \mem~398_combout\);

-- Location: LCCOMB_X27_Y28_N16
\mem~399\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~399_combout\ = (temp_addr2(2) & ((\mem~396_combout\ & ((\mem~398_combout\))) # (!\mem~396_combout\ & (\mem~391_combout\)))) # (!temp_addr2(2) & (((\mem~396_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~391_combout\,
	datab => temp_addr2(2),
	datac => \mem~396_combout\,
	datad => \mem~398_combout\,
	combout => \mem~399_combout\);

-- Location: FF_X27_Y28_N19
\mem~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~252_q\);

-- Location: LCCOMB_X24_Y29_N4
\mem~463\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~463_combout\ = (\mem~438_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~438_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~463_combout\);

-- Location: FF_X23_Y29_N27
\mem~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~220_q\);

-- Location: FF_X24_Y28_N5
\mem~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~156_q\);

-- Location: LCCOMB_X24_Y28_N4
\mem~400\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~400_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~220_q\)) # (!temp_addr2(3) & ((\mem~156_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~220_q\,
	datac => \mem~156_q\,
	datad => temp_addr2(3),
	combout => \mem~400_combout\);

-- Location: LCCOMB_X27_Y28_N18
\mem~401\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~401_combout\ = (temp_addr2(2) & ((\mem~400_combout\ & ((\mem~252_q\))) # (!\mem~400_combout\ & (\mem~188_q\)))) # (!temp_addr2(2) & (((\mem~400_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~188_q\,
	datab => temp_addr2(2),
	datac => \mem~252_q\,
	datad => \mem~400_combout\,
	combout => \mem~401_combout\);

-- Location: FF_X27_Y28_N5
\mem~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~244_q\);

-- Location: FF_X28_Y30_N7
\mem~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~148_q\);

-- Location: LCCOMB_X28_Y30_N6
\mem~404\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~404_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~180_q\)) # (!temp_addr2(2) & ((\mem~148_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~180_q\,
	datab => temp_addr2(3),
	datac => \mem~148_q\,
	datad => temp_addr2(2),
	combout => \mem~404_combout\);

-- Location: LCCOMB_X27_Y28_N4
\mem~405\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~405_combout\ = (temp_addr2(3) & ((\mem~404_combout\ & ((\mem~244_q\))) # (!\mem~404_combout\ & (\mem~212_q\)))) # (!temp_addr2(3) & (((\mem~404_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~212_q\,
	datab => temp_addr2(3),
	datac => \mem~244_q\,
	datad => \mem~404_combout\,
	combout => \mem~405_combout\);

-- Location: FF_X28_Y29_N27
\mem~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~260_q\);

-- Location: LCCOMB_X29_Y29_N24
\mem~196feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~196feeder_combout\ = \ctrl_out[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[6]~input_o\,
	combout => \mem~196feeder_combout\);

-- Location: FF_X29_Y29_N25
\mem~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~196feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~196_q\);

-- Location: FF_X28_Y29_N1
\mem~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~164_q\);

-- Location: LCCOMB_X28_Y29_N0
\mem~402\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~402_combout\ = (temp_addr2(2) & ((\mem~196_q\) # ((temp_addr2(3))))) # (!temp_addr2(2) & (((\mem~164_q\ & !temp_addr2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~196_q\,
	datac => \mem~164_q\,
	datad => temp_addr2(3),
	combout => \mem~402_combout\);

-- Location: LCCOMB_X28_Y29_N26
\mem~403\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~403_combout\ = (temp_addr2(3) & ((\mem~402_combout\ & ((\mem~260_q\))) # (!\mem~402_combout\ & (\mem~228_q\)))) # (!temp_addr2(3) & (((\mem~402_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~228_q\,
	datab => temp_addr2(3),
	datac => \mem~260_q\,
	datad => \mem~402_combout\,
	combout => \mem~403_combout\);

-- Location: LCCOMB_X27_Y28_N22
\mem~406\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~406_combout\ = (temp_addr2(0) & (temp_addr2(1))) # (!temp_addr2(0) & ((temp_addr2(1) & ((\mem~403_combout\))) # (!temp_addr2(1) & (\mem~405_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~405_combout\,
	datad => \mem~403_combout\,
	combout => \mem~406_combout\);

-- Location: LCCOMB_X25_Y28_N22
\mem~474\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~474_combout\ = (\mem~436_combout\ & (temp_addr(4) & (\process_0~0_combout\ & \reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~436_combout\,
	datab => temp_addr(4),
	datac => \process_0~0_combout\,
	datad => \reset~input_o\,
	combout => \mem~474_combout\);

-- Location: FF_X23_Y29_N21
\mem~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~204_q\);

-- Location: FF_X23_Y30_N1
\mem~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~268_q\);

-- Location: FF_X24_Y30_N23
\mem~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[6]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~172_q\);

-- Location: LCCOMB_X24_Y30_N22
\mem~407\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~407_combout\ = (temp_addr2(3) & ((\mem~236_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~172_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~236_q\,
	datab => temp_addr2(3),
	datac => \mem~172_q\,
	datad => temp_addr2(2),
	combout => \mem~407_combout\);

-- Location: LCCOMB_X23_Y30_N0
\mem~408\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~408_combout\ = (temp_addr2(2) & ((\mem~407_combout\ & ((\mem~268_q\))) # (!\mem~407_combout\ & (\mem~204_q\)))) # (!temp_addr2(2) & (((\mem~407_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~204_q\,
	datac => \mem~268_q\,
	datad => \mem~407_combout\,
	combout => \mem~408_combout\);

-- Location: LCCOMB_X27_Y28_N24
\mem~409\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~409_combout\ = (temp_addr2(0) & ((\mem~406_combout\ & ((\mem~408_combout\))) # (!\mem~406_combout\ & (\mem~401_combout\)))) # (!temp_addr2(0) & (((\mem~406_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~401_combout\,
	datac => \mem~406_combout\,
	datad => \mem~408_combout\,
	combout => \mem~409_combout\);

-- Location: LCCOMB_X26_Y30_N16
\Equal2~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = \ram_out[6]~input_o\ $ (((temp_addr2(4) & ((\mem~409_combout\))) # (!temp_addr2(4) & (\mem~399_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[6]~input_o\,
	datab => temp_addr2(4),
	datac => \mem~399_combout\,
	datad => \mem~409_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X26_Y30_N20
\Equal2~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!\Equal2~8_combout\ & (!\Equal2~5_combout\ & (!\Equal2~6_combout\ & !\Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~5_combout\,
	datac => \Equal2~6_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X26_Y30_N2
\temp_addr2[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp_addr2[0]~1_combout\ = (\Equal2~4_combout\ & (!\Equal1~4_combout\ & (\temp_addr2[0]~0_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datab => \Equal1~4_combout\,
	datac => \temp_addr2[0]~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \temp_addr2[0]~1_combout\);

-- Location: LCCOMB_X27_Y29_N0
\LessThan1~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \LessThan1~10_combout\ = (\LessThan1~9_combout\ & !temp_addr2(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~9_combout\,
	datad => temp_addr2(31),
	combout => \LessThan1~10_combout\);

-- Location: LCCOMB_X26_Y30_N24
\temp_addr2[4]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \temp_addr2[4]~2_combout\ = (\temp_addr2[0]~1_combout\ & (\Add2~12_combout\ & ((!\LessThan1~10_combout\)))) # (!\temp_addr2[0]~1_combout\ & (((temp_addr2(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => \temp_addr2[0]~1_combout\,
	datac => temp_addr2(4),
	datad => \LessThan1~10_combout\,
	combout => \temp_addr2[4]~2_combout\);

-- Location: FF_X26_Y30_N25
\temp_addr2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \temp_addr2[4]~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => temp_addr2(4));

-- Location: IOIBUF_X23_Y41_N1
\ctrl_out[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(3),
	o => \ctrl_out[3]~input_o\);

-- Location: FF_X24_Y28_N13
\mem~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~249_q\);

-- Location: FF_X24_Y28_N19
\mem~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~153_q\);

-- Location: LCCOMB_X24_Y28_N18
\mem~342\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~342_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~185_q\)) # (!temp_addr2(2) & ((\mem~153_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~185_q\,
	datab => temp_addr2(3),
	datac => \mem~153_q\,
	datad => temp_addr2(2),
	combout => \mem~342_combout\);

-- Location: LCCOMB_X24_Y28_N12
\mem~343\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~343_combout\ = (temp_addr2(3) & ((\mem~342_combout\ & ((\mem~249_q\))) # (!\mem~342_combout\ & (\mem~217_q\)))) # (!temp_addr2(3) & (((\mem~342_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~217_q\,
	datab => temp_addr2(3),
	datac => \mem~249_q\,
	datad => \mem~342_combout\,
	combout => \mem~343_combout\);

-- Location: LCCOMB_X25_Y30_N4
\mem~346\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~346_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~343_combout\))) # (!temp_addr2(0) & (\mem~345_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~345_combout\,
	datab => temp_addr2(1),
	datac => temp_addr2(0),
	datad => \mem~343_combout\,
	combout => \mem~346_combout\);

-- Location: LCCOMB_X29_Y29_N22
\mem~193feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~193feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~193feeder_combout\);

-- Location: FF_X29_Y29_N23
\mem~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~193feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~193_q\);

-- Location: FF_X28_Y29_N15
\mem~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~257_q\);

-- Location: LCCOMB_X28_Y28_N4
\mem~225feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~225feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~225feeder_combout\);

-- Location: FF_X28_Y28_N5
\mem~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~225feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~225_q\);

-- Location: FF_X28_Y29_N21
\mem~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~161_q\);

-- Location: LCCOMB_X28_Y29_N20
\mem~340\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~340_combout\ = (temp_addr2(2) & (((temp_addr2(3))))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~225_q\)) # (!temp_addr2(3) & ((\mem~161_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~225_q\,
	datac => \mem~161_q\,
	datad => temp_addr2(3),
	combout => \mem~340_combout\);

-- Location: LCCOMB_X28_Y29_N14
\mem~341\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~341_combout\ = (temp_addr2(2) & ((\mem~340_combout\ & ((\mem~257_q\))) # (!\mem~340_combout\ & (\mem~193_q\)))) # (!temp_addr2(2) & (((\mem~340_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~193_q\,
	datac => \mem~257_q\,
	datad => \mem~340_combout\,
	combout => \mem~341_combout\);

-- Location: LCCOMB_X25_Y30_N6
\mem~349\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~349_combout\ = (temp_addr2(1) & ((\mem~346_combout\ & (\mem~348_combout\)) # (!\mem~346_combout\ & ((\mem~341_combout\))))) # (!temp_addr2(1) & (((\mem~346_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~348_combout\,
	datab => temp_addr2(1),
	datac => \mem~346_combout\,
	datad => \mem~341_combout\,
	combout => \mem~349_combout\);

-- Location: FF_X26_Y31_N7
\mem~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~137_q\);

-- Location: LCCOMB_X25_Y31_N30
\mem~121feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~121feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~121feeder_combout\);

-- Location: FF_X25_Y31_N31
\mem~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~121feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~121_q\);

-- Location: LCCOMB_X26_Y31_N6
\mem~338\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~338_combout\ = (\mem~337_combout\ & (((\mem~137_q\)) # (!temp_addr2(0)))) # (!\mem~337_combout\ & (temp_addr2(0) & ((\mem~121_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~337_combout\,
	datab => temp_addr2(0),
	datac => \mem~137_q\,
	datad => \mem~121_q\,
	combout => \mem~338_combout\);

-- Location: LCCOMB_X27_Y27_N4
\mem~97feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~97feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~97feeder_combout\);

-- Location: FF_X27_Y27_N5
\mem~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~97feeder_combout\,
	ena => \mem~441_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~97_q\);

-- Location: FF_X28_Y27_N15
\mem~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~105_q\);

-- Location: LCCOMB_X25_Y27_N12
\mem~89feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~89feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~89feeder_combout\);

-- Location: LCCOMB_X24_Y29_N10
\mem~439\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~439_combout\ = (\mem~438_combout\ & (\reset~input_o\ & (\process_0~0_combout\ & !temp_addr(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~438_combout\,
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => temp_addr(4),
	combout => \mem~439_combout\);

-- Location: FF_X25_Y27_N13
\mem~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~89feeder_combout\,
	ena => \mem~439_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~89_q\);

-- Location: FF_X28_Y27_N29
\mem~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~81_q\);

-- Location: LCCOMB_X28_Y27_N28
\mem~330\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~330_combout\ = (temp_addr2(1) & (((temp_addr2(0))))) # (!temp_addr2(1) & ((temp_addr2(0) & (\mem~89_q\)) # (!temp_addr2(0) & ((\mem~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~89_q\,
	datac => \mem~81_q\,
	datad => temp_addr2(0),
	combout => \mem~330_combout\);

-- Location: LCCOMB_X28_Y27_N14
\mem~331\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~331_combout\ = (temp_addr2(1) & ((\mem~330_combout\ & ((\mem~105_q\))) # (!\mem~330_combout\ & (\mem~97_q\)))) # (!temp_addr2(1) & (((\mem~330_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => \mem~97_q\,
	datac => \mem~105_q\,
	datad => \mem~330_combout\,
	combout => \mem~331_combout\);

-- Location: FF_X26_Y28_N31
\mem~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~437_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~73_q\);

-- Location: FF_X26_Y28_N5
\mem~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~435_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~49_q\);

-- Location: LCCOMB_X26_Y28_N4
\mem~332\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~332_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~65_q\)) # (!temp_addr2(1) & ((\mem~49_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~65_q\,
	datab => temp_addr2(0),
	datac => \mem~49_q\,
	datad => temp_addr2(1),
	combout => \mem~332_combout\);

-- Location: LCCOMB_X26_Y28_N30
\mem~333\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~333_combout\ = (temp_addr2(0) & ((\mem~332_combout\ & ((\mem~73_q\))) # (!\mem~332_combout\ & (\mem~57_q\)))) # (!temp_addr2(0) & (((\mem~332_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~57_q\,
	datab => temp_addr2(0),
	datac => \mem~73_q\,
	datad => \mem~332_combout\,
	combout => \mem~333_combout\);

-- Location: FF_X26_Y27_N23
\mem~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~41_q\);

-- Location: LCCOMB_X25_Y27_N6
\mem~25feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~25feeder_combout\ = \ctrl_out[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[3]~input_o\,
	combout => \mem~25feeder_combout\);

-- Location: LCCOMB_X24_Y28_N20
\mem~447\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~447_combout\ = (!temp_addr(4) & (\reset~input_o\ & (\process_0~0_combout\ & \mem~446_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr(4),
	datab => \reset~input_o\,
	datac => \process_0~0_combout\,
	datad => \mem~446_combout\,
	combout => \mem~447_combout\);

-- Location: FF_X25_Y27_N7
\mem~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~25feeder_combout\,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~25_q\);

-- Location: FF_X26_Y27_N21
\mem~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[3]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~17_q\);

-- Location: LCCOMB_X26_Y27_N20
\mem~334\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~334_combout\ = (temp_addr2(0) & ((\mem~25_q\) # ((temp_addr2(1))))) # (!temp_addr2(0) & (((\mem~17_q\ & !temp_addr2(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~25_q\,
	datac => \mem~17_q\,
	datad => temp_addr2(1),
	combout => \mem~334_combout\);

-- Location: LCCOMB_X26_Y27_N22
\mem~335\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~335_combout\ = (temp_addr2(1) & ((\mem~334_combout\ & ((\mem~41_q\))) # (!\mem~334_combout\ & (\mem~33_q\)))) # (!temp_addr2(1) & (((\mem~334_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~33_q\,
	datab => temp_addr2(1),
	datac => \mem~41_q\,
	datad => \mem~334_combout\,
	combout => \mem~335_combout\);

-- Location: LCCOMB_X25_Y30_N28
\mem~336\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~336_combout\ = (temp_addr2(2) & ((temp_addr2(3)) # ((\mem~333_combout\)))) # (!temp_addr2(2) & (!temp_addr2(3) & ((\mem~335_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~333_combout\,
	datad => \mem~335_combout\,
	combout => \mem~336_combout\);

-- Location: LCCOMB_X25_Y30_N14
\mem~339\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~339_combout\ = (temp_addr2(3) & ((\mem~336_combout\ & (\mem~338_combout\)) # (!\mem~336_combout\ & ((\mem~331_combout\))))) # (!temp_addr2(3) & (((\mem~336_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~338_combout\,
	datac => \mem~331_combout\,
	datad => \mem~336_combout\,
	combout => \mem~339_combout\);

-- Location: LCCOMB_X26_Y30_N0
\Equal2~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = \ram_out[3]~input_o\ $ (((temp_addr2(4) & (\mem~349_combout\)) # (!temp_addr2(4) & ((\mem~339_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[3]~input_o\,
	datab => temp_addr2(4),
	datac => \mem~349_combout\,
	datad => \mem~339_combout\,
	combout => \Equal2~3_combout\);

-- Location: IOIBUF_X31_Y41_N15
\ctrl_out[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ctrl_out(2),
	o => \ctrl_out[2]~input_o\);

-- Location: FF_X26_Y27_N11
\mem~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~40_q\);

-- Location: FF_X26_Y27_N1
\mem~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~16_q\);

-- Location: LCCOMB_X26_Y27_N0
\mem~314\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~314_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~32_q\)) # (!temp_addr2(1) & ((\mem~16_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~32_q\,
	datab => temp_addr2(0),
	datac => \mem~16_q\,
	datad => temp_addr2(1),
	combout => \mem~314_combout\);

-- Location: LCCOMB_X26_Y27_N10
\mem~315\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~315_combout\ = (temp_addr2(0) & ((\mem~314_combout\ & ((\mem~40_q\))) # (!\mem~314_combout\ & (\mem~24_q\)))) # (!temp_addr2(0) & (((\mem~314_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~24_q\,
	datab => temp_addr2(0),
	datac => \mem~40_q\,
	datad => \mem~314_combout\,
	combout => \mem~315_combout\);

-- Location: FF_X28_Y27_N27
\mem~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~104_q\);

-- Location: FF_X28_Y27_N25
\mem~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~80_q\);

-- Location: LCCOMB_X28_Y27_N24
\mem~312\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~312_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~96_q\)) # (!temp_addr2(1) & ((\mem~80_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~96_q\,
	datab => temp_addr2(0),
	datac => \mem~80_q\,
	datad => temp_addr2(1),
	combout => \mem~312_combout\);

-- Location: LCCOMB_X28_Y27_N26
\mem~313\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~313_combout\ = (temp_addr2(0) & ((\mem~312_combout\ & ((\mem~104_q\))) # (!\mem~312_combout\ & (\mem~88_q\)))) # (!temp_addr2(0) & (((\mem~312_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~88_q\,
	datab => temp_addr2(0),
	datac => \mem~104_q\,
	datad => \mem~312_combout\,
	combout => \mem~313_combout\);

-- Location: LCCOMB_X27_Y30_N8
\mem~316\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~316_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & ((\mem~313_combout\))) # (!temp_addr2(3) & (\mem~315_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~315_combout\,
	datad => \mem~313_combout\,
	combout => \mem~316_combout\);

-- Location: FF_X26_Y31_N11
\mem~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~136_q\);

-- Location: FF_X27_Y31_N11
\mem~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~112_q\);

-- Location: FF_X25_Y31_N13
\mem~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~120_q\);

-- Location: LCCOMB_X27_Y31_N10
\mem~317\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~317_combout\ = (temp_addr2(1) & (temp_addr2(0))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~120_q\))) # (!temp_addr2(0) & (\mem~112_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~112_q\,
	datad => \mem~120_q\,
	combout => \mem~317_combout\);

-- Location: LCCOMB_X26_Y31_N10
\mem~318\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~318_combout\ = (temp_addr2(1) & ((\mem~317_combout\ & ((\mem~136_q\))) # (!\mem~317_combout\ & (\mem~128_q\)))) # (!temp_addr2(1) & (((\mem~317_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~128_q\,
	datab => temp_addr2(1),
	datac => \mem~136_q\,
	datad => \mem~317_combout\,
	combout => \mem~318_combout\);

-- Location: LCCOMB_X27_Y30_N10
\mem~319\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~319_combout\ = (temp_addr2(2) & ((\mem~316_combout\ & ((\mem~318_combout\))) # (!\mem~316_combout\ & (\mem~311_combout\)))) # (!temp_addr2(2) & (((\mem~316_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~311_combout\,
	datab => temp_addr2(2),
	datac => \mem~316_combout\,
	datad => \mem~318_combout\,
	combout => \mem~319_combout\);

-- Location: FF_X24_Y28_N15
\mem~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~152_q\);

-- Location: LCCOMB_X24_Y28_N14
\mem~320\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~320_combout\ = (temp_addr2(3) & ((\mem~216_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~152_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~216_q\,
	datab => temp_addr2(3),
	datac => \mem~152_q\,
	datad => temp_addr2(2),
	combout => \mem~320_combout\);

-- Location: FF_X24_Y28_N17
\mem~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~248_q\);

-- Location: LCCOMB_X24_Y28_N16
\mem~321\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~321_combout\ = (\mem~320_combout\ & (((\mem~248_q\) # (!temp_addr2(2))))) # (!\mem~320_combout\ & (\mem~184_q\ & ((temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~184_q\,
	datab => \mem~320_combout\,
	datac => \mem~248_q\,
	datad => temp_addr2(2),
	combout => \mem~321_combout\);

-- Location: LCCOMB_X23_Y29_N12
\mem~200feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~200feeder_combout\ = \ctrl_out[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[2]~input_o\,
	combout => \mem~200feeder_combout\);

-- Location: FF_X23_Y29_N13
\mem~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~200feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~200_q\);

-- Location: FF_X23_Y30_N19
\mem~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~264_q\);

-- Location: FF_X24_Y30_N7
\mem~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~168_q\);

-- Location: LCCOMB_X24_Y30_N6
\mem~327\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~327_combout\ = (temp_addr2(3) & ((\mem~232_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~168_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~232_q\,
	datab => temp_addr2(3),
	datac => \mem~168_q\,
	datad => temp_addr2(2),
	combout => \mem~327_combout\);

-- Location: LCCOMB_X23_Y30_N18
\mem~328\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~328_combout\ = (temp_addr2(2) & ((\mem~327_combout\ & ((\mem~264_q\))) # (!\mem~327_combout\ & (\mem~200_q\)))) # (!temp_addr2(2) & (((\mem~327_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~200_q\,
	datac => \mem~264_q\,
	datad => \mem~327_combout\,
	combout => \mem~328_combout\);

-- Location: FF_X25_Y30_N31
\mem~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~240_q\);

-- Location: FF_X28_Y30_N5
\mem~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~471_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~176_q\);

-- Location: FF_X25_Y30_N21
\mem~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~144_q\);

-- Location: LCCOMB_X25_Y30_N20
\mem~324\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~324_combout\ = (temp_addr2(3) & (((temp_addr2(2))))) # (!temp_addr2(3) & ((temp_addr2(2) & (\mem~176_q\)) # (!temp_addr2(2) & ((\mem~144_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~176_q\,
	datac => \mem~144_q\,
	datad => temp_addr2(2),
	combout => \mem~324_combout\);

-- Location: LCCOMB_X25_Y30_N30
\mem~325\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~325_combout\ = (temp_addr2(3) & ((\mem~324_combout\ & ((\mem~240_q\))) # (!\mem~324_combout\ & (\mem~208_q\)))) # (!temp_addr2(3) & (((\mem~324_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~208_q\,
	datab => temp_addr2(3),
	datac => \mem~240_q\,
	datad => \mem~324_combout\,
	combout => \mem~325_combout\);

-- Location: FF_X28_Y28_N9
\mem~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~224_q\);

-- Location: FF_X28_Y29_N19
\mem~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~256_q\);

-- Location: LCCOMB_X29_Y29_N4
\mem~192feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~192feeder_combout\ = \ctrl_out[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[2]~input_o\,
	combout => \mem~192feeder_combout\);

-- Location: FF_X29_Y29_N5
\mem~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~192feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~192_q\);

-- Location: FF_X28_Y29_N25
\mem~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[2]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~160_q\);

-- Location: LCCOMB_X28_Y29_N24
\mem~322\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~322_combout\ = (temp_addr2(2) & ((\mem~192_q\) # ((temp_addr2(3))))) # (!temp_addr2(2) & (((\mem~160_q\ & !temp_addr2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~192_q\,
	datac => \mem~160_q\,
	datad => temp_addr2(3),
	combout => \mem~322_combout\);

-- Location: LCCOMB_X28_Y29_N18
\mem~323\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~323_combout\ = (temp_addr2(3) & ((\mem~322_combout\ & ((\mem~256_q\))) # (!\mem~322_combout\ & (\mem~224_q\)))) # (!temp_addr2(3) & (((\mem~322_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~224_q\,
	datac => \mem~256_q\,
	datad => \mem~322_combout\,
	combout => \mem~323_combout\);

-- Location: LCCOMB_X25_Y30_N0
\mem~326\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~326_combout\ = (temp_addr2(0) & (temp_addr2(1))) # (!temp_addr2(0) & ((temp_addr2(1) & ((\mem~323_combout\))) # (!temp_addr2(1) & (\mem~325_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => temp_addr2(1),
	datac => \mem~325_combout\,
	datad => \mem~323_combout\,
	combout => \mem~326_combout\);

-- Location: LCCOMB_X25_Y30_N18
\mem~329\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~329_combout\ = (temp_addr2(0) & ((\mem~326_combout\ & ((\mem~328_combout\))) # (!\mem~326_combout\ & (\mem~321_combout\)))) # (!temp_addr2(0) & (((\mem~326_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~321_combout\,
	datac => \mem~328_combout\,
	datad => \mem~326_combout\,
	combout => \mem~329_combout\);

-- Location: LCCOMB_X26_Y30_N30
\Equal2~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = \ram_out[2]~input_o\ $ (((temp_addr2(4) & ((\mem~329_combout\))) # (!temp_addr2(4) & (\mem~319_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[2]~input_o\,
	datab => temp_addr2(4),
	datac => \mem~319_combout\,
	datad => \mem~329_combout\,
	combout => \Equal2~2_combout\);

-- Location: FF_X26_Y31_N27
\mem~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~461_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~134_q\);

-- Location: FF_X27_Y31_N23
\mem~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~459_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~110_q\);

-- Location: LCCOMB_X25_Y31_N0
\mem~118feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~118feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~118feeder_combout\);

-- Location: FF_X25_Y31_N1
\mem~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~118feeder_combout\,
	ena => \mem~457_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~118_q\);

-- Location: LCCOMB_X27_Y31_N22
\mem~277\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~277_combout\ = (temp_addr2(1) & (temp_addr2(0))) # (!temp_addr2(1) & ((temp_addr2(0) & ((\mem~118_q\))) # (!temp_addr2(0) & (\mem~110_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~110_q\,
	datad => \mem~118_q\,
	combout => \mem~277_combout\);

-- Location: LCCOMB_X26_Y31_N26
\mem~278\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~278_combout\ = (temp_addr2(1) & ((\mem~277_combout\ & ((\mem~134_q\))) # (!\mem~277_combout\ & (\mem~126_q\)))) # (!temp_addr2(1) & (((\mem~277_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~126_q\,
	datab => temp_addr2(1),
	datac => \mem~134_q\,
	datad => \mem~277_combout\,
	combout => \mem~278_combout\);

-- Location: FF_X28_Y27_N3
\mem~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~445_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~102_q\);

-- Location: FF_X28_Y27_N17
\mem~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~443_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~78_q\);

-- Location: LCCOMB_X28_Y27_N16
\mem~272\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~272_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~94_q\)) # (!temp_addr2(1) & ((\mem~78_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~94_q\,
	datab => temp_addr2(0),
	datac => \mem~78_q\,
	datad => temp_addr2(1),
	combout => \mem~272_combout\);

-- Location: LCCOMB_X28_Y27_N2
\mem~273\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~273_combout\ = (temp_addr2(0) & ((\mem~272_combout\ & ((\mem~102_q\))) # (!\mem~272_combout\ & (\mem~86_q\)))) # (!temp_addr2(0) & (((\mem~272_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~86_q\,
	datab => temp_addr2(0),
	datac => \mem~102_q\,
	datad => \mem~272_combout\,
	combout => \mem~273_combout\);

-- Location: FF_X25_Y27_N19
\mem~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~447_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~22_q\);

-- Location: FF_X26_Y27_N19
\mem~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~453_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~38_q\);

-- Location: FF_X27_Y27_N11
\mem~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~449_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~30_q\);

-- Location: FF_X26_Y27_N25
\mem~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~451_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~14_q\);

-- Location: LCCOMB_X26_Y27_N24
\mem~274\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~274_combout\ = (temp_addr2(0) & (((temp_addr2(1))))) # (!temp_addr2(0) & ((temp_addr2(1) & (\mem~30_q\)) # (!temp_addr2(1) & ((\mem~14_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~30_q\,
	datac => \mem~14_q\,
	datad => temp_addr2(1),
	combout => \mem~274_combout\);

-- Location: LCCOMB_X26_Y27_N18
\mem~275\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~275_combout\ = (temp_addr2(0) & ((\mem~274_combout\ & ((\mem~38_q\))) # (!\mem~274_combout\ & (\mem~22_q\)))) # (!temp_addr2(0) & (((\mem~274_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~22_q\,
	datac => \mem~38_q\,
	datad => \mem~274_combout\,
	combout => \mem~275_combout\);

-- Location: LCCOMB_X27_Y29_N24
\mem~276\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~276_combout\ = (temp_addr2(2) & (temp_addr2(3))) # (!temp_addr2(2) & ((temp_addr2(3) & (\mem~273_combout\)) # (!temp_addr2(3) & ((\mem~275_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => temp_addr2(3),
	datac => \mem~273_combout\,
	datad => \mem~275_combout\,
	combout => \mem~276_combout\);

-- Location: LCCOMB_X27_Y29_N10
\mem~279\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~279_combout\ = (temp_addr2(2) & ((\mem~276_combout\ & ((\mem~278_combout\))) # (!\mem~276_combout\ & (\mem~271_combout\)))) # (!temp_addr2(2) & (((\mem~276_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~271_combout\,
	datab => \mem~278_combout\,
	datac => temp_addr2(2),
	datad => \mem~276_combout\,
	combout => \mem~279_combout\);

-- Location: LCCOMB_X28_Y28_N18
\mem~206feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~206feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~206feeder_combout\);

-- Location: FF_X28_Y28_N19
\mem~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~206feeder_combout\,
	ena => \mem~470_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~206_q\);

-- Location: FF_X27_Y29_N15
\mem~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~473_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~238_q\);

-- Location: FF_X27_Y29_N29
\mem~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~472_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~142_q\);

-- Location: LCCOMB_X27_Y29_N28
\mem~284\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~284_combout\ = (temp_addr2(2) & ((\mem~174_q\) # ((temp_addr2(3))))) # (!temp_addr2(2) & (((\mem~142_q\ & !temp_addr2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~174_q\,
	datab => temp_addr2(2),
	datac => \mem~142_q\,
	datad => temp_addr2(3),
	combout => \mem~284_combout\);

-- Location: LCCOMB_X27_Y29_N14
\mem~285\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~285_combout\ = (temp_addr2(3) & ((\mem~284_combout\ & ((\mem~238_q\))) # (!\mem~284_combout\ & (\mem~206_q\)))) # (!temp_addr2(3) & (((\mem~284_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~206_q\,
	datac => \mem~238_q\,
	datad => \mem~284_combout\,
	combout => \mem~285_combout\);

-- Location: LCCOMB_X28_Y28_N0
\mem~222feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~222feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~222feeder_combout\);

-- Location: FF_X28_Y28_N1
\mem~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~222feeder_combout\,
	ena => \mem~466_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~222_q\);

-- Location: FF_X28_Y29_N3
\mem~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~469_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~254_q\);

-- Location: LCCOMB_X29_Y29_N0
\mem~190feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~190feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~190feeder_combout\);

-- Location: FF_X29_Y29_N1
\mem~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~190feeder_combout\,
	ena => \mem~467_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~190_q\);

-- Location: FF_X28_Y29_N17
\mem~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~468_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~158_q\);

-- Location: LCCOMB_X28_Y29_N16
\mem~282\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~282_combout\ = (temp_addr2(2) & ((\mem~190_q\) # ((temp_addr2(3))))) # (!temp_addr2(2) & (((\mem~158_q\ & !temp_addr2(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~190_q\,
	datac => \mem~158_q\,
	datad => temp_addr2(3),
	combout => \mem~282_combout\);

-- Location: LCCOMB_X28_Y29_N2
\mem~283\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~283_combout\ = (temp_addr2(3) & ((\mem~282_combout\ & ((\mem~254_q\))) # (!\mem~282_combout\ & (\mem~222_q\)))) # (!temp_addr2(3) & (((\mem~282_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~222_q\,
	datac => \mem~254_q\,
	datad => \mem~282_combout\,
	combout => \mem~283_combout\);

-- Location: LCCOMB_X27_Y29_N8
\mem~286\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~286_combout\ = (temp_addr2(1) & ((temp_addr2(0)) # ((\mem~283_combout\)))) # (!temp_addr2(1) & (!temp_addr2(0) & (\mem~285_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(1),
	datab => temp_addr2(0),
	datac => \mem~285_combout\,
	datad => \mem~283_combout\,
	combout => \mem~286_combout\);

-- Location: LCCOMB_X23_Y29_N0
\mem~198feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~198feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~198feeder_combout\);

-- Location: FF_X23_Y29_N1
\mem~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~198feeder_combout\,
	ena => \mem~474_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~198_q\);

-- Location: FF_X23_Y30_N11
\mem~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~477_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~262_q\);

-- Location: FF_X24_Y30_N19
\mem~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~476_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~166_q\);

-- Location: LCCOMB_X24_Y30_N18
\mem~287\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~287_combout\ = (temp_addr2(3) & ((\mem~230_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~166_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~230_q\,
	datab => temp_addr2(3),
	datac => \mem~166_q\,
	datad => temp_addr2(2),
	combout => \mem~287_combout\);

-- Location: LCCOMB_X23_Y30_N10
\mem~288\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~288_combout\ = (temp_addr2(2) & ((\mem~287_combout\ & ((\mem~262_q\))) # (!\mem~287_combout\ & (\mem~198_q\)))) # (!temp_addr2(2) & (((\mem~287_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(2),
	datab => \mem~198_q\,
	datac => \mem~262_q\,
	datad => \mem~287_combout\,
	combout => \mem~288_combout\);

-- Location: FF_X27_Y28_N1
\mem~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~465_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~246_q\);

-- Location: LCCOMB_X24_Y29_N8
\mem~214feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~214feeder_combout\ = \ctrl_out[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ctrl_out[0]~input_o\,
	combout => \mem~214feeder_combout\);

-- Location: FF_X24_Y29_N9
\mem~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \mem~214feeder_combout\,
	ena => \mem~463_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~214_q\);

-- Location: FF_X24_Y28_N25
\mem~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \ctrl_out[0]~input_o\,
	sload => VCC,
	ena => \mem~464_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mem~150_q\);

-- Location: LCCOMB_X24_Y28_N24
\mem~280\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~280_combout\ = (temp_addr2(3) & ((\mem~214_q\) # ((temp_addr2(2))))) # (!temp_addr2(3) & (((\mem~150_q\ & !temp_addr2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(3),
	datab => \mem~214_q\,
	datac => \mem~150_q\,
	datad => temp_addr2(2),
	combout => \mem~280_combout\);

-- Location: LCCOMB_X27_Y28_N0
\mem~281\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~281_combout\ = (temp_addr2(2) & ((\mem~280_combout\ & ((\mem~246_q\))) # (!\mem~280_combout\ & (\mem~182_q\)))) # (!temp_addr2(2) & (((\mem~280_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mem~182_q\,
	datab => temp_addr2(2),
	datac => \mem~246_q\,
	datad => \mem~280_combout\,
	combout => \mem~281_combout\);

-- Location: LCCOMB_X27_Y29_N18
\mem~289\ : cycloneiv_lcell_comb
-- Equation(s):
-- \mem~289_combout\ = (temp_addr2(0) & ((\mem~286_combout\ & (\mem~288_combout\)) # (!\mem~286_combout\ & ((\mem~281_combout\))))) # (!temp_addr2(0) & (\mem~286_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => temp_addr2(0),
	datab => \mem~286_combout\,
	datac => \mem~288_combout\,
	datad => \mem~281_combout\,
	combout => \mem~289_combout\);

-- Location: LCCOMB_X26_Y30_N18
\Equal2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = \ram_out[0]~input_o\ $ (((temp_addr2(4) & ((\mem~289_combout\))) # (!temp_addr2(4) & (\mem~279_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ram_out[0]~input_o\,
	datab => temp_addr2(4),
	datac => \mem~279_combout\,
	datad => \mem~289_combout\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X26_Y30_N10
\Equal2~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (!\Equal2~1_combout\ & (!\Equal2~3_combout\ & (!\Equal2~2_combout\ & !\Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~3_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~0_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X25_Y29_N16
\Equal2~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (\Equal2~4_combout\ & \Equal2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Equal2~4_combout\,
	datad => \Equal2~9_combout\,
	combout => \Equal2~10_combout\);

-- Location: FF_X25_Y29_N17
S_data_Valid : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Equal2~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \S_data_Valid~q\);

-- Location: LCCOMB_X51_Y28_N0
\Add1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = S_validOffset(0) $ (VCC)
-- \Add1~1\ = CARRY(S_validOffset(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X50_Y28_N24
\Add1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (!\S_data_Valid~q\ & \Add1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~0_combout\,
	combout => \Add1~2_combout\);

-- Location: FF_X50_Y28_N25
\S_validOffset[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(0));

-- Location: LCCOMB_X51_Y28_N2
\Add1~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~3_combout\ = (S_validOffset(1) & (!\Add1~1\)) # (!S_validOffset(1) & ((\Add1~1\) # (GND)))
-- \Add1~4\ = CARRY((!\Add1~1\) # (!S_validOffset(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~3_combout\,
	cout => \Add1~4\);

-- Location: LCCOMB_X50_Y28_N26
\Add1~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~5_combout\ = (!\S_data_Valid~q\ & \Add1~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~3_combout\,
	combout => \Add1~5_combout\);

-- Location: FF_X50_Y28_N27
\S_validOffset[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(1));

-- Location: LCCOMB_X51_Y28_N4
\Add1~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (S_validOffset(2) & (\Add1~4\ $ (GND))) # (!S_validOffset(2) & (!\Add1~4\ & VCC))
-- \Add1~7\ = CARRY((S_validOffset(2) & !\Add1~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(2),
	datad => VCC,
	cin => \Add1~4\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X50_Y28_N28
\Add1~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (!\S_data_Valid~q\ & \Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~6_combout\,
	combout => \Add1~8_combout\);

-- Location: FF_X50_Y28_N29
\S_validOffset[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(2));

-- Location: LCCOMB_X51_Y28_N6
\Add1~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~9_combout\ = (S_validOffset(3) & (!\Add1~7\)) # (!S_validOffset(3) & ((\Add1~7\) # (GND)))
-- \Add1~10\ = CARRY((!\Add1~7\) # (!S_validOffset(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(3),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~9_combout\,
	cout => \Add1~10\);

-- Location: LCCOMB_X50_Y28_N30
\Add1~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~11_combout\ = (!\S_data_Valid~q\ & \Add1~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~9_combout\,
	combout => \Add1~11_combout\);

-- Location: FF_X50_Y28_N31
\S_validOffset[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(3));

-- Location: LCCOMB_X51_Y28_N8
\Add1~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (S_validOffset(4) & (\Add1~10\ $ (GND))) # (!S_validOffset(4) & (!\Add1~10\ & VCC))
-- \Add1~13\ = CARRY((S_validOffset(4) & !\Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(4),
	datad => VCC,
	cin => \Add1~10\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X50_Y28_N16
\Add1~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (!\S_data_Valid~q\ & \Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~12_combout\,
	combout => \Add1~14_combout\);

-- Location: FF_X50_Y28_N17
\S_validOffset[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(4));

-- Location: LCCOMB_X51_Y28_N10
\Add1~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~15_combout\ = (S_validOffset(5) & (!\Add1~13\)) # (!S_validOffset(5) & ((\Add1~13\) # (GND)))
-- \Add1~16\ = CARRY((!\Add1~13\) # (!S_validOffset(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(5),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~15_combout\,
	cout => \Add1~16\);

-- Location: LCCOMB_X50_Y28_N18
\Add1~17\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~17_combout\ = (!\S_data_Valid~q\ & \Add1~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~15_combout\,
	combout => \Add1~17_combout\);

-- Location: FF_X50_Y28_N19
\S_validOffset[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(5));

-- Location: LCCOMB_X51_Y28_N12
\Add1~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (S_validOffset(6) & (\Add1~16\ $ (GND))) # (!S_validOffset(6) & (!\Add1~16\ & VCC))
-- \Add1~19\ = CARRY((S_validOffset(6) & !\Add1~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(6),
	datad => VCC,
	cin => \Add1~16\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: LCCOMB_X50_Y28_N4
\Add1~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (!\S_data_Valid~q\ & \Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~18_combout\,
	combout => \Add1~20_combout\);

-- Location: FF_X50_Y28_N5
\S_validOffset[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(6));

-- Location: LCCOMB_X51_Y28_N14
\Add1~21\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~21_combout\ = (S_validOffset(7) & (!\Add1~19\)) # (!S_validOffset(7) & ((\Add1~19\) # (GND)))
-- \Add1~22\ = CARRY((!\Add1~19\) # (!S_validOffset(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(7),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~21_combout\,
	cout => \Add1~22\);

-- Location: LCCOMB_X50_Y28_N14
\Add1~23\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~23_combout\ = (!\S_data_Valid~q\ & \Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~21_combout\,
	combout => \Add1~23_combout\);

-- Location: FF_X50_Y28_N15
\S_validOffset[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(7));

-- Location: LCCOMB_X51_Y28_N16
\Add1~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (S_validOffset(8) & (\Add1~22\ $ (GND))) # (!S_validOffset(8) & (!\Add1~22\ & VCC))
-- \Add1~25\ = CARRY((S_validOffset(8) & !\Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(8),
	datad => VCC,
	cin => \Add1~22\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: LCCOMB_X50_Y28_N8
\Add1~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (!\S_data_Valid~q\ & \Add1~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~24_combout\,
	combout => \Add1~26_combout\);

-- Location: FF_X50_Y28_N9
\S_validOffset[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~26_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(8));

-- Location: LCCOMB_X51_Y28_N18
\Add1~27\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~27_combout\ = (S_validOffset(9) & (!\Add1~25\)) # (!S_validOffset(9) & ((\Add1~25\) # (GND)))
-- \Add1~28\ = CARRY((!\Add1~25\) # (!S_validOffset(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(9),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~27_combout\,
	cout => \Add1~28\);

-- Location: LCCOMB_X50_Y28_N10
\Add1~29\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~29_combout\ = (!\S_data_Valid~q\ & \Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~27_combout\,
	combout => \Add1~29_combout\);

-- Location: FF_X50_Y28_N11
\S_validOffset[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(9));

-- Location: LCCOMB_X51_Y28_N20
\Add1~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (S_validOffset(10) & (\Add1~28\ $ (GND))) # (!S_validOffset(10) & (!\Add1~28\ & VCC))
-- \Add1~31\ = CARRY((S_validOffset(10) & !\Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(10),
	datad => VCC,
	cin => \Add1~28\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: LCCOMB_X50_Y28_N20
\Add1~32\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (!\S_data_Valid~q\ & \Add1~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~30_combout\,
	combout => \Add1~32_combout\);

-- Location: FF_X50_Y28_N21
\S_validOffset[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~32_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(10));

-- Location: LCCOMB_X51_Y28_N22
\Add1~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~33_combout\ = (S_validOffset(11) & (!\Add1~31\)) # (!S_validOffset(11) & ((\Add1~31\) # (GND)))
-- \Add1~34\ = CARRY((!\Add1~31\) # (!S_validOffset(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(11),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~33_combout\,
	cout => \Add1~34\);

-- Location: LCCOMB_X50_Y28_N6
\Add1~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~35_combout\ = (!\S_data_Valid~q\ & \Add1~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~33_combout\,
	combout => \Add1~35_combout\);

-- Location: FF_X50_Y28_N7
\S_validOffset[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~35_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(11));

-- Location: LCCOMB_X51_Y28_N24
\Add1~36\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (S_validOffset(12) & (\Add1~34\ $ (GND))) # (!S_validOffset(12) & (!\Add1~34\ & VCC))
-- \Add1~37\ = CARRY((S_validOffset(12) & !\Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(12),
	datad => VCC,
	cin => \Add1~34\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: LCCOMB_X50_Y28_N0
\Add1~38\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (!\S_data_Valid~q\ & \Add1~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~36_combout\,
	combout => \Add1~38_combout\);

-- Location: FF_X50_Y28_N1
\S_validOffset[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~38_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(12));

-- Location: LCCOMB_X51_Y28_N26
\Add1~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~39_combout\ = (S_validOffset(13) & (!\Add1~37\)) # (!S_validOffset(13) & ((\Add1~37\) # (GND)))
-- \Add1~40\ = CARRY((!\Add1~37\) # (!S_validOffset(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(13),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~39_combout\,
	cout => \Add1~40\);

-- Location: LCCOMB_X50_Y28_N2
\Add1~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~41_combout\ = (!\S_data_Valid~q\ & \Add1~39_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~39_combout\,
	combout => \Add1~41_combout\);

-- Location: FF_X50_Y28_N3
\S_validOffset[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~41_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(13));

-- Location: LCCOMB_X51_Y28_N28
\Add1~42\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (S_validOffset(14) & (\Add1~40\ $ (GND))) # (!S_validOffset(14) & (!\Add1~40\ & VCC))
-- \Add1~43\ = CARRY((S_validOffset(14) & !\Add1~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(14),
	datad => VCC,
	cin => \Add1~40\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: LCCOMB_X50_Y28_N12
\Add1~44\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (!\S_data_Valid~q\ & \Add1~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S_data_Valid~q\,
	datad => \Add1~42_combout\,
	combout => \Add1~44_combout\);

-- Location: FF_X50_Y28_N13
\S_validOffset[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~44_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(14));

-- Location: LCCOMB_X51_Y28_N30
\Add1~45\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~45_combout\ = (S_validOffset(15) & (!\Add1~43\)) # (!S_validOffset(15) & ((\Add1~43\) # (GND)))
-- \Add1~46\ = CARRY((!\Add1~43\) # (!S_validOffset(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(15),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~45_combout\,
	cout => \Add1~46\);

-- Location: LCCOMB_X50_Y27_N0
\Add1~47\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~47_combout\ = (\Add1~45_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~45_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~47_combout\);

-- Location: FF_X50_Y27_N1
\S_validOffset[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~47_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(15));

-- Location: LCCOMB_X51_Y27_N0
\Add1~48\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (S_validOffset(16) & (\Add1~46\ $ (GND))) # (!S_validOffset(16) & (!\Add1~46\ & VCC))
-- \Add1~49\ = CARRY((S_validOffset(16) & !\Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(16),
	datad => VCC,
	cin => \Add1~46\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: LCCOMB_X50_Y27_N2
\Add1~50\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (\Add1~48_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~48_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~50_combout\);

-- Location: FF_X50_Y27_N3
\S_validOffset[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~50_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(16));

-- Location: LCCOMB_X51_Y27_N2
\Add1~51\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~51_combout\ = (S_validOffset(17) & (!\Add1~49\)) # (!S_validOffset(17) & ((\Add1~49\) # (GND)))
-- \Add1~52\ = CARRY((!\Add1~49\) # (!S_validOffset(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(17),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~51_combout\,
	cout => \Add1~52\);

-- Location: LCCOMB_X50_Y27_N12
\Add1~53\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~53_combout\ = (!\S_data_Valid~q\ & \Add1~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~51_combout\,
	combout => \Add1~53_combout\);

-- Location: FF_X50_Y27_N13
\S_validOffset[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~53_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(17));

-- Location: LCCOMB_X51_Y27_N4
\Add1~54\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (S_validOffset(18) & (\Add1~52\ $ (GND))) # (!S_validOffset(18) & (!\Add1~52\ & VCC))
-- \Add1~55\ = CARRY((S_validOffset(18) & !\Add1~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(18),
	datad => VCC,
	cin => \Add1~52\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: LCCOMB_X50_Y27_N6
\Add1~56\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (!\S_data_Valid~q\ & \Add1~54_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~54_combout\,
	combout => \Add1~56_combout\);

-- Location: FF_X50_Y27_N7
\S_validOffset[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~56_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(18));

-- Location: LCCOMB_X51_Y27_N6
\Add1~57\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~57_combout\ = (S_validOffset(19) & (!\Add1~55\)) # (!S_validOffset(19) & ((\Add1~55\) # (GND)))
-- \Add1~58\ = CARRY((!\Add1~55\) # (!S_validOffset(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(19),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~57_combout\,
	cout => \Add1~58\);

-- Location: LCCOMB_X50_Y27_N16
\Add1~59\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~59_combout\ = (!\S_data_Valid~q\ & \Add1~57_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~57_combout\,
	combout => \Add1~59_combout\);

-- Location: FF_X50_Y27_N17
\S_validOffset[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~59_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(19));

-- Location: LCCOMB_X51_Y27_N8
\Add1~60\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (S_validOffset(20) & (\Add1~58\ $ (GND))) # (!S_validOffset(20) & (!\Add1~58\ & VCC))
-- \Add1~61\ = CARRY((S_validOffset(20) & !\Add1~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(20),
	datad => VCC,
	cin => \Add1~58\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: LCCOMB_X50_Y27_N18
\Add1~62\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = (\Add1~60_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~60_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~62_combout\);

-- Location: FF_X50_Y27_N19
\S_validOffset[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~62_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(20));

-- Location: LCCOMB_X51_Y27_N10
\Add1~63\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~63_combout\ = (S_validOffset(21) & (!\Add1~61\)) # (!S_validOffset(21) & ((\Add1~61\) # (GND)))
-- \Add1~64\ = CARRY((!\Add1~61\) # (!S_validOffset(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(21),
	datad => VCC,
	cin => \Add1~61\,
	combout => \Add1~63_combout\,
	cout => \Add1~64\);

-- Location: LCCOMB_X50_Y27_N4
\Add1~65\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~65_combout\ = (\Add1~63_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~63_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~65_combout\);

-- Location: FF_X50_Y27_N5
\S_validOffset[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~65_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(21));

-- Location: LCCOMB_X51_Y27_N12
\Add1~66\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~66_combout\ = (S_validOffset(22) & (\Add1~64\ $ (GND))) # (!S_validOffset(22) & (!\Add1~64\ & VCC))
-- \Add1~67\ = CARRY((S_validOffset(22) & !\Add1~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(22),
	datad => VCC,
	cin => \Add1~64\,
	combout => \Add1~66_combout\,
	cout => \Add1~67\);

-- Location: LCCOMB_X50_Y27_N14
\Add1~68\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~68_combout\ = (\Add1~66_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~66_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~68_combout\);

-- Location: FF_X50_Y27_N15
\S_validOffset[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~68_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(22));

-- Location: LCCOMB_X51_Y27_N14
\Add1~69\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~69_combout\ = (S_validOffset(23) & (!\Add1~67\)) # (!S_validOffset(23) & ((\Add1~67\) # (GND)))
-- \Add1~70\ = CARRY((!\Add1~67\) # (!S_validOffset(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(23),
	datad => VCC,
	cin => \Add1~67\,
	combout => \Add1~69_combout\,
	cout => \Add1~70\);

-- Location: LCCOMB_X50_Y27_N8
\Add1~71\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~71_combout\ = (\Add1~69_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~69_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~71_combout\);

-- Location: FF_X50_Y27_N9
\S_validOffset[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~71_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(23));

-- Location: LCCOMB_X51_Y27_N16
\Add1~72\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~72_combout\ = (S_validOffset(24) & (\Add1~70\ $ (GND))) # (!S_validOffset(24) & (!\Add1~70\ & VCC))
-- \Add1~73\ = CARRY((S_validOffset(24) & !\Add1~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(24),
	datad => VCC,
	cin => \Add1~70\,
	combout => \Add1~72_combout\,
	cout => \Add1~73\);

-- Location: LCCOMB_X50_Y27_N26
\Add1~74\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~74_combout\ = (!\S_data_Valid~q\ & \Add1~72_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~72_combout\,
	combout => \Add1~74_combout\);

-- Location: FF_X50_Y27_N27
\S_validOffset[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~74_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(24));

-- Location: LCCOMB_X51_Y27_N18
\Add1~75\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~75_combout\ = (S_validOffset(25) & (!\Add1~73\)) # (!S_validOffset(25) & ((\Add1~73\) # (GND)))
-- \Add1~76\ = CARRY((!\Add1~73\) # (!S_validOffset(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(25),
	datad => VCC,
	cin => \Add1~73\,
	combout => \Add1~75_combout\,
	cout => \Add1~76\);

-- Location: LCCOMB_X50_Y27_N28
\Add1~77\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~77_combout\ = (!\S_data_Valid~q\ & \Add1~75_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~75_combout\,
	combout => \Add1~77_combout\);

-- Location: FF_X50_Y27_N29
\S_validOffset[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~77_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(25));

-- Location: LCCOMB_X51_Y27_N20
\Add1~78\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~78_combout\ = (S_validOffset(26) & (\Add1~76\ $ (GND))) # (!S_validOffset(26) & (!\Add1~76\ & VCC))
-- \Add1~79\ = CARRY((S_validOffset(26) & !\Add1~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(26),
	datad => VCC,
	cin => \Add1~76\,
	combout => \Add1~78_combout\,
	cout => \Add1~79\);

-- Location: LCCOMB_X50_Y27_N22
\Add1~80\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~80_combout\ = (\Add1~78_combout\ & !\S_data_Valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~78_combout\,
	datad => \S_data_Valid~q\,
	combout => \Add1~80_combout\);

-- Location: FF_X50_Y27_N23
\S_validOffset[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~80_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(26));

-- Location: LCCOMB_X51_Y27_N22
\Add1~81\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~81_combout\ = (S_validOffset(27) & (!\Add1~79\)) # (!S_validOffset(27) & ((\Add1~79\) # (GND)))
-- \Add1~82\ = CARRY((!\Add1~79\) # (!S_validOffset(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(27),
	datad => VCC,
	cin => \Add1~79\,
	combout => \Add1~81_combout\,
	cout => \Add1~82\);

-- Location: LCCOMB_X50_Y27_N24
\Add1~83\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~83_combout\ = (!\S_data_Valid~q\ & \Add1~81_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~81_combout\,
	combout => \Add1~83_combout\);

-- Location: FF_X50_Y27_N25
\S_validOffset[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~83_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(27));

-- Location: LCCOMB_X51_Y27_N24
\Add1~84\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~84_combout\ = (S_validOffset(28) & (\Add1~82\ $ (GND))) # (!S_validOffset(28) & (!\Add1~82\ & VCC))
-- \Add1~85\ = CARRY((S_validOffset(28) & !\Add1~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => S_validOffset(28),
	datad => VCC,
	cin => \Add1~82\,
	combout => \Add1~84_combout\,
	cout => \Add1~85\);

-- Location: LCCOMB_X50_Y27_N10
\Add1~86\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~86_combout\ = (!\S_data_Valid~q\ & \Add1~84_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~84_combout\,
	combout => \Add1~86_combout\);

-- Location: FF_X50_Y27_N11
\S_validOffset[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~86_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(28));

-- Location: LCCOMB_X51_Y27_N26
\Add1~87\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~87_combout\ = (S_validOffset(29) & (!\Add1~85\)) # (!S_validOffset(29) & ((\Add1~85\) # (GND)))
-- \Add1~88\ = CARRY((!\Add1~85\) # (!S_validOffset(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(29),
	datad => VCC,
	cin => \Add1~85\,
	combout => \Add1~87_combout\,
	cout => \Add1~88\);

-- Location: LCCOMB_X50_Y27_N20
\Add1~89\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~89_combout\ = (!\S_data_Valid~q\ & \Add1~87_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~87_combout\,
	combout => \Add1~89_combout\);

-- Location: FF_X50_Y27_N21
\S_validOffset[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~89_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(29));

-- Location: LCCOMB_X51_Y27_N28
\Add1~90\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~90_combout\ = (S_validOffset(30) & (\Add1~88\ $ (GND))) # (!S_validOffset(30) & (!\Add1~88\ & VCC))
-- \Add1~91\ = CARRY((S_validOffset(30) & !\Add1~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => S_validOffset(30),
	datad => VCC,
	cin => \Add1~88\,
	combout => \Add1~90_combout\,
	cout => \Add1~91\);

-- Location: LCCOMB_X50_Y27_N30
\Add1~92\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~92_combout\ = (!\S_data_Valid~q\ & \Add1~90_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S_data_Valid~q\,
	datad => \Add1~90_combout\,
	combout => \Add1~92_combout\);

-- Location: FF_X50_Y27_N31
\S_validOffset[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~92_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(30));

-- Location: LCCOMB_X51_Y27_N30
\Add1~93\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~93_combout\ = \Add1~91\ $ (S_validOffset(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => S_validOffset(31),
	cin => \Add1~91\,
	combout => \Add1~93_combout\);

-- Location: LCCOMB_X50_Y28_N22
\Add1~95\ : cycloneiv_lcell_comb
-- Equation(s):
-- \Add1~95_combout\ = (!\S_data_Valid~q\ & \Add1~93_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S_data_Valid~q\,
	datac => \Add1~93_combout\,
	combout => \Add1~95_combout\);

-- Location: FF_X50_Y28_N23
\S_validOffset[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \Add1~95_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	ena => \process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => S_validOffset(31));

ww_data_Valid <= \data_Valid~output_o\;

ww_validOffset(0) <= \validOffset[0]~output_o\;

ww_validOffset(1) <= \validOffset[1]~output_o\;

ww_validOffset(2) <= \validOffset[2]~output_o\;

ww_validOffset(3) <= \validOffset[3]~output_o\;

ww_validOffset(4) <= \validOffset[4]~output_o\;

ww_validOffset(5) <= \validOffset[5]~output_o\;

ww_validOffset(6) <= \validOffset[6]~output_o\;

ww_validOffset(7) <= \validOffset[7]~output_o\;

ww_validOffset(8) <= \validOffset[8]~output_o\;

ww_validOffset(9) <= \validOffset[9]~output_o\;

ww_validOffset(10) <= \validOffset[10]~output_o\;

ww_validOffset(11) <= \validOffset[11]~output_o\;

ww_validOffset(12) <= \validOffset[12]~output_o\;

ww_validOffset(13) <= \validOffset[13]~output_o\;

ww_validOffset(14) <= \validOffset[14]~output_o\;

ww_validOffset(15) <= \validOffset[15]~output_o\;

ww_validOffset(16) <= \validOffset[16]~output_o\;

ww_validOffset(17) <= \validOffset[17]~output_o\;

ww_validOffset(18) <= \validOffset[18]~output_o\;

ww_validOffset(19) <= \validOffset[19]~output_o\;

ww_validOffset(20) <= \validOffset[20]~output_o\;

ww_validOffset(21) <= \validOffset[21]~output_o\;

ww_validOffset(22) <= \validOffset[22]~output_o\;

ww_validOffset(23) <= \validOffset[23]~output_o\;

ww_validOffset(24) <= \validOffset[24]~output_o\;

ww_validOffset(25) <= \validOffset[25]~output_o\;

ww_validOffset(26) <= \validOffset[26]~output_o\;

ww_validOffset(27) <= \validOffset[27]~output_o\;

ww_validOffset(28) <= \validOffset[28]~output_o\;

ww_validOffset(29) <= \validOffset[29]~output_o\;

ww_validOffset(30) <= \validOffset[30]~output_o\;

ww_validOffset(31) <= \validOffset[31]~output_o\;
END structure;


