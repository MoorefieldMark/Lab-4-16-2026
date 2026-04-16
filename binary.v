module binary (
    input w,
    input btnC,
    input btnU,
    output z,
    output [2:0] state
);


wire [2:0] next;

dff instance_DFlipFlopOne(
    .Default(1'b0),
    .D(next[0]),
    .clk(btnC),
    .reset(btnU),
    .Q(state[0])
);

dff instance_DFlipFlopTwo(
    .Default(1'b0),
    .D(next[1]),
    .clk(btnC),
    .reset(btnU),
    .Q(state[1])
);

dff instance_DFlipFlopThree(
    .Default(1'b0),
    .D(next[2]),
    .clk(btnC),
    .reset(btnU),
    .Q(state[2])
);

//z = 1 when C or E
assign z = (state[1] & ~state[0]) | 
           (state[2] & ~state[0]);

//next[2] = 1 when D & W = 1 or when E & W = 1
assign next[2] = (state[1] & state[0] & w) |  
                 (state[2] & w);             

//next[1] = 1 when A & w = 1 or B & W = 1 or when C & W = either 1 or 0
assign next[1] = (~state[2] & ~state[1] & state[0] & ~w) | 
                 (~state[2] & ~state[1] & state[0] &  w) | 
                 (~state[2] & ~state[1] & ~state[0] & w) | 
                 (~state[2] &  state[1] & ~state[0]);        

//next[0] = 1 when A & W = 0 or 1 or when B & W = 1 or 
//C & W = 1 or D & W = 0 or E & W = 0
assign next[0] =(~state[2] & ~state[1] & ~state[0] & ~w) | 
                (~state[2] & ~state[1] &  state[0] &  w) | 
                (~state[2] &  state[1] & ~state[0] &  w) | 
                (~state[2] &  state[1] &  state[0] & ~w) | 
                (~state[2] & ~state[1] & ~state[0] &  w) | 
                (state[2] & ~w);                                     

endmodule