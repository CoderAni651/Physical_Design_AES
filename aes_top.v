module aes_top(
input clk,
input rst,
input start,


input [127:0] plaintext,
input [127:0] key,

output [127:0] ciphertext,
output done


);

// Round Keys
wire [127:0] rk0;
wire [127:0] rk1;
wire [127:0] rk2;
wire [127:0] rk3;
wire [127:0] rk4;
wire [127:0] rk5;
wire [127:0] rk6;
wire [127:0] rk7;
wire [127:0] rk8;
wire [127:0] rk9;
wire [127:0] rk10;

// State Signals
wire [127:0] state0;
wire [127:0] state1;
wire [127:0] state2;
wire [127:0] state3;
wire [127:0] state4;
wire [127:0] state5;
wire [127:0] state6;
wire [127:0] state7;
wire [127:0] state8;
wire [127:0] state9;
wire [127:0] state10;

// Controller
aes_controller CTRL(
.clk(clk),
.rst(rst),
.start(start),
.done(done)
);

// Key Expansion
key_expansion KE(
.key(key),
.rk0(rk0),
.rk1(rk1),
.rk2(rk2),
.rk3(rk3),
.rk4(rk4),
.rk5(rk5),
.rk6(rk6),
.rk7(rk7),
.rk8(rk8),
.rk9(rk9),
.rk10(rk10)
);

// Initial AddRoundKey
addroundkey ARK0(
.state_in(plaintext),
.round_key(rk0),
.state_out(state0)
);

// Round 1
aes_round R1(
.state_in(state0),
.round_key(rk1),
.state_out(state1)
);

// Round 2
aes_round R2(
.state_in(state1),
.round_key(rk2),
.state_out(state2)
);

// Round 3
aes_round R3(
.state_in(state2),
.round_key(rk3),
.state_out(state3)
);

// Round 4
aes_round R4(
.state_in(state3),
.round_key(rk4),
.state_out(state4)
);

// Round 5
aes_round R5(
.state_in(state4),
.round_key(rk5),
.state_out(state5)
);

// Round 6
aes_round R6(
.state_in(state5),
.round_key(rk6),
.state_out(state6)
);

// Round 7
aes_round R7(
.state_in(state6),
.round_key(rk7),
.state_out(state7)
);

// Round 8
aes_round R8(
.state_in(state7),
.round_key(rk8),
.state_out(state8)
);

// Round 9
aes_round R9(
.state_in(state8),
.round_key(rk9),
.state_out(state9)
);

// Round 10
aes_round R10(
.state_in(state9),
.round_key(rk10),
.state_out(state10)
);

// Final Output
assign ciphertext = state10;

endmodule
