
`timescale 1 ns / 1 ps

	module axi_pinmux_v1_0 #
	(
		// Users to add parameters here
		parameter integer C_PORT_SIZE = 32,
		parameter integer C_PINMUX_WIDTH = 4,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXI
		parameter integer C_S00_AXI_DATA_WIDTH	= 32,
		parameter integer C_S00_AXI_ADDR_WIDTH	= 7
	)
	(
		// Users to add ports here
        output wire [C_PINMUX_WIDTH-1:0] sel0,
        output wire [C_PINMUX_WIDTH-1:0] sel1,
        output wire [C_PINMUX_WIDTH-1:0] sel2,
        output wire [C_PINMUX_WIDTH-1:0] sel3,
        output wire [C_PINMUX_WIDTH-1:0] sel4,
        output wire [C_PINMUX_WIDTH-1:0] sel5,
        output wire [C_PINMUX_WIDTH-1:0] sel6,
        output wire [C_PINMUX_WIDTH-1:0] sel7,
        output wire [C_PINMUX_WIDTH-1:0] sel8,
        output wire [C_PINMUX_WIDTH-1:0] sel9,
        output wire [C_PINMUX_WIDTH-1:0] sel10,
        output wire [C_PINMUX_WIDTH-1:0] sel11,
        output wire [C_PINMUX_WIDTH-1:0] sel12,
        output wire [C_PINMUX_WIDTH-1:0] sel13,
        output wire [C_PINMUX_WIDTH-1:0] sel14,
        output wire [C_PINMUX_WIDTH-1:0] sel15,
        output wire [C_PINMUX_WIDTH-1:0] sel16,
        output wire [C_PINMUX_WIDTH-1:0] sel17,
        output wire [C_PINMUX_WIDTH-1:0] sel18,
        output wire [C_PINMUX_WIDTH-1:0] sel19,
        output wire [C_PINMUX_WIDTH-1:0] sel20,
        output wire [C_PINMUX_WIDTH-1:0] sel21,
        output wire [C_PINMUX_WIDTH-1:0] sel22,
        output wire [C_PINMUX_WIDTH-1:0] sel23,
        output wire [C_PINMUX_WIDTH-1:0] sel24,
        output wire [C_PINMUX_WIDTH-1:0] sel25,
        output wire [C_PINMUX_WIDTH-1:0] sel26,
        output wire [C_PINMUX_WIDTH-1:0] sel27,
        output wire [C_PINMUX_WIDTH-1:0] sel28,
        output wire [C_PINMUX_WIDTH-1:0] sel29,
        output wire [C_PINMUX_WIDTH-1:0] sel30,
        output wire [C_PINMUX_WIDTH-1:0] sel31,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXI
		input wire  s00_axi_aclk,
		input wire  s00_axi_aresetn,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_awaddr,
		input wire [2 : 0] s00_axi_awprot,
		input wire  s00_axi_awvalid,
		output wire  s00_axi_awready,
		input wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_wdata,
		input wire [(C_S00_AXI_DATA_WIDTH/8)-1 : 0] s00_axi_wstrb,
		input wire  s00_axi_wvalid,
		output wire  s00_axi_wready,
		output wire [1 : 0] s00_axi_bresp,
		output wire  s00_axi_bvalid,
		input wire  s00_axi_bready,
		input wire [C_S00_AXI_ADDR_WIDTH-1 : 0] s00_axi_araddr,
		input wire [2 : 0] s00_axi_arprot,
		input wire  s00_axi_arvalid,
		output wire  s00_axi_arready,
		output wire [C_S00_AXI_DATA_WIDTH-1 : 0] s00_axi_rdata,
		output wire [1 : 0] s00_axi_rresp,
		output wire  s00_axi_rvalid,
		input wire  s00_axi_rready
	);
// Instantiation of Axi Bus Interface S00_AXI
	axi_pinmux_v1_0_S00_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_S00_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_S00_AXI_ADDR_WIDTH)
	) axi_pinmux_v1_0_S00_AXI_inst (

		.sel0(sel0),
		.sel1(sel1),
		.sel2(sel2),
		.sel3(sel3),
		.sel4(sel4),
		.sel5(sel5),
		.sel6(sel6),
		.sel7(sel7),
		.sel8(sel8),
		.sel9(sel9),
		.sel10(sel10),
		.sel11(sel11),
		.sel12(sel12),
		.sel13(sel13),
		.sel14(sel14),
		.sel15(sel15),
		.sel16(sel16),
		.sel17(sel17),
		.sel18(sel18),
		.sel19(sel19),
		.sel20(sel20),
		.sel21(sel21),
		.sel22(sel22),
		.sel23(sel23),
		.sel24(sel24),
		.sel25(sel25),
		.sel26(sel26),
		.sel27(sel27),
		.sel28(sel28),
		.sel29(sel29),
		.sel30(sel30),
		.sel31(sel31),

		.S_AXI_ACLK(s00_axi_aclk),
		.S_AXI_ARESETN(s00_axi_aresetn),
		.S_AXI_AWADDR(s00_axi_awaddr),
		.S_AXI_AWPROT(s00_axi_awprot),
		.S_AXI_AWVALID(s00_axi_awvalid),
		.S_AXI_AWREADY(s00_axi_awready),
		.S_AXI_WDATA(s00_axi_wdata),
		.S_AXI_WSTRB(s00_axi_wstrb),
		.S_AXI_WVALID(s00_axi_wvalid),
		.S_AXI_WREADY(s00_axi_wready),
		.S_AXI_BRESP(s00_axi_bresp),
		.S_AXI_BVALID(s00_axi_bvalid),
		.S_AXI_BREADY(s00_axi_bready),
		.S_AXI_ARADDR(s00_axi_araddr),
		.S_AXI_ARPROT(s00_axi_arprot),
		.S_AXI_ARVALID(s00_axi_arvalid),
		.S_AXI_ARREADY(s00_axi_arready),
		.S_AXI_RDATA(s00_axi_rdata),
		.S_AXI_RRESP(s00_axi_rresp),
		.S_AXI_RVALID(s00_axi_rvalid),
		.S_AXI_RREADY(s00_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
