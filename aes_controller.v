module aes_controller(
    input clk,
    input rst,
    input start,
    output reg done
);

reg [3:0] state;

localparam IDLE    = 4'd0;
localparam ROUND1  = 4'd1;
localparam ROUND2  = 4'd2;
localparam ROUND3  = 4'd3;
localparam ROUND4  = 4'd4;
localparam ROUND5  = 4'd5;
localparam ROUND6  = 4'd6;
localparam ROUND7  = 4'd7;
localparam ROUND8  = 4'd8;
localparam ROUND9  = 4'd9;
localparam ROUND10 = 4'd10;
localparam FINISH  = 4'd11;

always @(posedge clk or posedge rst)
begin
    if(rst)
    begin
        state <= IDLE;
        done  <= 1'b0;
    end
    else
    begin
        case(state)

        IDLE:
        begin
            done <= 1'b0;
            if(start)
                state <= ROUND1;
        end

        ROUND1:  state <= ROUND2;
        ROUND2:  state <= ROUND3;
        ROUND3:  state <= ROUND4;
        ROUND4:  state <= ROUND5;
        ROUND5:  state <= ROUND6;
        ROUND6:  state <= ROUND7;
        ROUND7:  state <= ROUND8;
        ROUND8:  state <= ROUND9;
        ROUND9:  state <= ROUND10;

        ROUND10:
            state <= FINISH;

        FINISH:
        begin
            done <= 1'b1;
            state <= IDLE;
        end

        default:
            state <= IDLE;

        endcase
    end
end

endmodule