-- (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:myip_full_1s:1.0
-- IP Revision: 1

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT myip_full_1s_0
  PORT (
    data_valid_in : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    start : IN STD_LOGIC;
    s00_axi_aclk : IN STD_LOGIC;
    s00_axi_aresetn : IN STD_LOGIC;
    s00_axi_awid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_awaddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s00_axi_awlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_awlock : IN STD_LOGIC;
    s00_axi_awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_awqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_awuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_awvalid : IN STD_LOGIC;
    s00_axi_awready : OUT STD_LOGIC;
    s00_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_wlast : IN STD_LOGIC;
    s00_axi_wuser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_wvalid : IN STD_LOGIC;
    s00_axi_wready : OUT STD_LOGIC;
    s00_axi_bid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_buser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_bvalid : OUT STD_LOGIC;
    s00_axi_bready : IN STD_LOGIC;
    s00_axi_arid : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_araddr : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
    s00_axi_arlen : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    s00_axi_arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_arlock : IN STD_LOGIC;
    s00_axi_arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    s00_axi_arqos : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_arregion : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s00_axi_aruser : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_arvalid : IN STD_LOGIC;
    s00_axi_arready : OUT STD_LOGIC;
    s00_axi_rid : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s00_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s00_axi_rlast : OUT STD_LOGIC;
    s00_axi_ruser : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    s00_axi_rvalid : OUT STD_LOGIC;
    s00_axi_rready : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : myip_full_1s_0
  PORT MAP (
    data_valid_in => data_valid_in,
    start => start,
    s00_axi_aclk => s00_axi_aclk,
    s00_axi_aresetn => s00_axi_aresetn,
    s00_axi_awid => s00_axi_awid,
    s00_axi_awaddr => s00_axi_awaddr,
    s00_axi_awlen => s00_axi_awlen,
    s00_axi_awsize => s00_axi_awsize,
    s00_axi_awburst => s00_axi_awburst,
    s00_axi_awlock => s00_axi_awlock,
    s00_axi_awcache => s00_axi_awcache,
    s00_axi_awprot => s00_axi_awprot,
    s00_axi_awqos => s00_axi_awqos,
    s00_axi_awregion => s00_axi_awregion,
    s00_axi_awuser => s00_axi_awuser,
    s00_axi_awvalid => s00_axi_awvalid,
    s00_axi_awready => s00_axi_awready,
    s00_axi_wdata => s00_axi_wdata,
    s00_axi_wstrb => s00_axi_wstrb,
    s00_axi_wlast => s00_axi_wlast,
    s00_axi_wuser => s00_axi_wuser,
    s00_axi_wvalid => s00_axi_wvalid,
    s00_axi_wready => s00_axi_wready,
    s00_axi_bid => s00_axi_bid,
    s00_axi_bresp => s00_axi_bresp,
    s00_axi_buser => s00_axi_buser,
    s00_axi_bvalid => s00_axi_bvalid,
    s00_axi_bready => s00_axi_bready,
    s00_axi_arid => s00_axi_arid,
    s00_axi_araddr => s00_axi_araddr,
    s00_axi_arlen => s00_axi_arlen,
    s00_axi_arsize => s00_axi_arsize,
    s00_axi_arburst => s00_axi_arburst,
    s00_axi_arlock => s00_axi_arlock,
    s00_axi_arcache => s00_axi_arcache,
    s00_axi_arprot => s00_axi_arprot,
    s00_axi_arqos => s00_axi_arqos,
    s00_axi_arregion => s00_axi_arregion,
    s00_axi_aruser => s00_axi_aruser,
    s00_axi_arvalid => s00_axi_arvalid,
    s00_axi_arready => s00_axi_arready,
    s00_axi_rid => s00_axi_rid,
    s00_axi_rdata => s00_axi_rdata,
    s00_axi_rresp => s00_axi_rresp,
    s00_axi_rlast => s00_axi_rlast,
    s00_axi_ruser => s00_axi_ruser,
    s00_axi_rvalid => s00_axi_rvalid,
    s00_axi_rready => s00_axi_rready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

