module onehot (
    input w,
    input btnC,
    input btnU, 
    output z,
    output Astate, 
    output Bstate, 
    output Cstate, 
    output Dstate, 
    output Estate
);

wire Anext, Bnext, Cnext, Dnext, Enext;

  dff A_DflipFlop(
        .Default(1'b1),  
        .D(Anext),
        .clk(btnC),
        .reset(btnU),
        .Q(Astate)
    );

    dff B_DflipFlop(
        .Default(1'b0),
        .D(Bnext),
        .clk(btnC),
        .reset(btnU),
        .Q(Bstate)
    );

    dff C_DflipFlop(
        .Default(1'b0),
        .D(Cnext),
        .clk(btnC),
        .reset(btnU),
        .Q(Cstate)
    );

    dff D_DflipFlop(
        .Default(1'b0),
        .D(Dnext),
        .clk(btnC),
        .reset(btnU),
        .Q(Dstate)
    );

    dff E_DflipFlop(
        .Default(1'b0),
        .D(Enext),
        .clk(btnC),
        .reset(btnU),
        .Q(Estate)
    );
    
    
    
    assign z = Cstate | Estate;
      
    assign Anext = 1'b0;
    
    assign Bnext = (~w & Astate) |
                   (~w & Dstate) |
                   (~w & Estate);

    assign Cnext = (~w & Bstate) |
                   (~w & Cstate);

    assign Dnext = (w & Astate) |
                   (w & Bstate) |
                   (w & Cstate);

    assign Enext = (w & Dstate) |
                   (w & Estate);

endmodule