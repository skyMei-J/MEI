//built-in frequency divided by 2^13, then divided by 13
//100M/(2^13) = 6103.5Hz
//6103.5/13 = 469.5Hz
//used counter to divide by 13
//input: built-in clock 100M Hz
//output: output clock 469.5 Hz

module my_counter_2(
        input clk,
        output out
    );
    reg[13:0]qq=0;
    reg[3:0]q=0;
    wire my_clk;
        always @(posedge clk)
        begin
            qq<=qq+1;
        end
            assign my_clk=qq[13];
       
        always @(posedge my_clk)
        begin
            if(q==12)
                q<=0;
            else
                q<=q+1;
        end
            assign out=q[3];
    
endmodule
