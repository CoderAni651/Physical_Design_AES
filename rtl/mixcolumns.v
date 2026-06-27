module mixcolumns(
input  [127:0] state_in,
output [127:0] state_out
);

function [7:0] xtime;
input [7:0] b;
begin
xtime = {b[6:0],1'b0} ^ (8'h1B & {8{b[7]}});
end
endfunction

function [7:0] mul3;
input [7:0] b;
begin
mul3 = xtime(b) ^ b;
end
endfunction

wire [7:0] s0  = state_in[127:120];
wire [7:0] s1  = state_in[119:112];
wire [7:0] s2  = state_in[111:104];
wire [7:0] s3  = state_in[103:96];

wire [7:0] s4  = state_in[95:88];
wire [7:0] s5  = state_in[87:80];
wire [7:0] s6  = state_in[79:72];
wire [7:0] s7  = state_in[71:64];

wire [7:0] s8  = state_in[63:56];
wire [7:0] s9  = state_in[55:48];
wire [7:0] s10 = state_in[47:40];
wire [7:0] s11 = state_in[39:32];

wire [7:0] s12 = state_in[31:24];
wire [7:0] s13 = state_in[23:16];
wire [7:0] s14 = state_in[15:8];
wire [7:0] s15 = state_in[7:0];

// Column 0
wire [7:0] m0 = xtime(s0) ^ mul3(s1) ^ s2 ^ s3;
wire [7:0] m1 = s0 ^ xtime(s1) ^ mul3(s2) ^ s3;
wire [7:0] m2 = s0 ^ s1 ^ xtime(s2) ^ mul3(s3);
wire [7:0] m3 = mul3(s0) ^ s1 ^ s2 ^ xtime(s3);

// Column 1
wire [7:0] m4 = xtime(s4) ^ mul3(s5) ^ s6 ^ s7;
wire [7:0] m5 = s4 ^ xtime(s5) ^ mul3(s6) ^ s7;
wire [7:0] m6 = s4 ^ s5 ^ xtime(s6) ^ mul3(s7);
wire [7:0] m7 = mul3(s4) ^ s5 ^ s6 ^ xtime(s7);

// Column 2
wire [7:0] m8  = xtime(s8) ^ mul3(s9) ^ s10 ^ s11;
wire [7:0] m9  = s8 ^ xtime(s9) ^ mul3(s10) ^ s11;
wire [7:0] m10 = s8 ^ s9 ^ xtime(s10) ^ mul3(s11);
wire [7:0] m11 = mul3(s8) ^ s9 ^ s10 ^ xtime(s11);

// Column 3
wire [7:0] m12 = xtime(s12) ^ mul3(s13) ^ s14 ^ s15;
wire [7:0] m13 = s12 ^ xtime(s13) ^ mul3(s14) ^ s15;
wire [7:0] m14 = s12 ^ s13 ^ xtime(s14) ^ mul3(s15);
wire [7:0] m15 = mul3(s12) ^ s13 ^ s14 ^ xtime(s15);

assign state_out = {
m0,m1,m2,m3,
m4,m5,m6,m7,
m8,m9,m10,m11,
m12,m13,m14,m15
};

endmodule
