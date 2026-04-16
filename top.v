module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

 wire [2:0] binary_state;
 
 binary binary_instance(
        .w(sw),
        .btnC(btnC),
        .btnU(btnU),
        .z(led[1]),        
        .state(binary_state)
    );
    
    
  onehot onehot_instance(
        .w(sw),
        .btnC(btnC),
        .btnU(btnU),
        .z(led[0]),       
        .Astate(led[2]),
        .Bstate(led[3]),
        .Cstate(led[4]),
        .Dstate(led[5]),
        .Estate(led[6])
    );
    
    
   assign led[9:7] = binary_state;
  
endmodule