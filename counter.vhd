-- megafunction wizard: %LPM_COUNTER%
-- GENERATION: STANDARD
-- VERSION: WM1.0
-- MODULE: lpm_counter 

-- ============================================================
-- File Name: counter.vhd
-- Megafunction Name(s):
-- 			lpm_counter
--
-- Simulation Library Files(s):
-- 			lpm
-- ============================================================
-- ************************************************************
-- THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
--
-- 9.0 Build 235 06/17/2009 SP 2 SJ Web Edition
-- ************************************************************


--Copyright (C) 1991-2009 Altera Corporation
--Your use of Altera Corporation's design tools, logic functions 
--and other software and tools, and its AMPP partner logic 
--functions, and any output files from any of the foregoing 
--(including device programming or simulation files), and any 
--associated documentation or information are expressly subject 
--to the terms and conditions of the Altera Program License 
--Subscription Agreement, Altera MegaCore Function License 
--Agreement, or other applicable license agreement, including, 
--without limitation, that your use is for the sole purpose of 
--programming logic devices manufactured by Altera and sold by 
--Altera or its authorized distributors.  Please refer to the 
--applicable agreement for further details.


LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY lpm;
USE lpm.all;

ENTITY counter IS
	PORT
	(
		aload		: IN STD_LOGIC ;
		clk_en		: IN STD_LOGIC ;
		clock		: IN STD_LOGIC ;
		data		: IN STD_LOGIC_VECTOR (13 DOWNTO 0);
		q		: OUT STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
END counter;


ARCHITECTURE SYN OF counter IS

	SIGNAL sub_wire0	: STD_LOGIC_VECTOR (13 DOWNTO 0);



	COMPONENT lpm_counter
	GENERIC (
		lpm_direction		: STRING;
		lpm_port_updown		: STRING;
		lpm_type		: STRING;
		lpm_width		: NATURAL
	);
	PORT (
			aload	: IN STD_LOGIC ;
			clk_en	: IN STD_LOGIC ;
			clock	: IN STD_LOGIC ;
			q	: OUT STD_LOGIC_VECTOR (13 DOWNTO 0);
			data	: IN STD_LOGIC_VECTOR (13 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	q    <= sub_wire0(13 DOWNTO 0);

	lpm_counter_component : lpm_counter
	GENERIC MAP (
		lpm_direction => "DOWN",
		lpm_port_updown => "PORT_UNUSED",
		lpm_type => "LPM_COUNTER",
		lpm_width => 14
	)
	PORT MAP (
		aload => aload,
		clk_en => clk_en,
		clock => clock,
		data => data,
		q => sub_wire0
	);



END SYN;

-- ============================================================
-- CNX file retrieval info
-- ============================================================
-- Retrieval info: PRIVATE: ACLR NUMERIC "0"
-- Retrieval info: PRIVATE: ALOAD NUMERIC "1"
-- Retrieval info: PRIVATE: ASET NUMERIC "0"
-- Retrieval info: PRIVATE: ASET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: CLK_EN NUMERIC "1"
-- Retrieval info: PRIVATE: CNT_EN NUMERIC "0"
-- Retrieval info: PRIVATE: CarryIn NUMERIC "0"
-- Retrieval info: PRIVATE: CarryOut NUMERIC "0"
-- Retrieval info: PRIVATE: Direction NUMERIC "1"
-- Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "FLEX10K"
-- Retrieval info: PRIVATE: ModulusCounter NUMERIC "0"
-- Retrieval info: PRIVATE: ModulusValue NUMERIC "0"
-- Retrieval info: PRIVATE: SCLR NUMERIC "0"
-- Retrieval info: PRIVATE: SLOAD NUMERIC "0"
-- Retrieval info: PRIVATE: SSET NUMERIC "0"
-- Retrieval info: PRIVATE: SSET_ALL1 NUMERIC "1"
-- Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
-- Retrieval info: PRIVATE: nBit NUMERIC "14"
-- Retrieval info: CONSTANT: LPM_DIRECTION STRING "DOWN"
-- Retrieval info: CONSTANT: LPM_PORT_UPDOWN STRING "PORT_UNUSED"
-- Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_COUNTER"
-- Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "14"
-- Retrieval info: USED_PORT: aload 0 0 0 0 INPUT NODEFVAL aload
-- Retrieval info: USED_PORT: clk_en 0 0 0 0 INPUT NODEFVAL clk_en
-- Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
-- Retrieval info: USED_PORT: data 0 0 14 0 INPUT NODEFVAL data[13..0]
-- Retrieval info: USED_PORT: q 0 0 14 0 OUTPUT NODEFVAL q[13..0]
-- Retrieval info: CONNECT: @clock 0 0 0 0 clock 0 0 0 0
-- Retrieval info: CONNECT: q 0 0 14 0 @q 0 0 14 0
-- Retrieval info: CONNECT: @clk_en 0 0 0 0 clk_en 0 0 0 0
-- Retrieval info: CONNECT: @aload 0 0 0 0 aload 0 0 0 0
-- Retrieval info: CONNECT: @data 0 0 14 0 data 0 0 14 0
-- Retrieval info: LIBRARY: lpm lpm.lpm_components.all
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter.vhd TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter.inc TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter.cmp FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter.bsf TRUE FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter_inst.vhd FALSE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter_waveforms.html TRUE
-- Retrieval info: GEN_FILE: TYPE_NORMAL counter_wave*.jpg FALSE
-- Retrieval info: LIB_FILE: lpm