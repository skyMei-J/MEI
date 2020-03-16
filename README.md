# frequency_eliminator 
language: verilog <br />
used in FPGA <br />

version: divided by 2^n <br />
input: built-in frequency <br />
output:  built-in frequency divided by 2^13 <br />
// 13 can be modified <br />
因為每次遇到clock的 positive edge，[13:0]q(二進位14位數)會加一，所以q[13]遇到clock上緣2^13次時，才會改變一次 <br />
q[13] change when there have been 2^13 rising edges <br />
![image](https://github.com/skyMei-J/clock_frequency_eliminator/blob/master/dfdfd.png)
<br />
version: divided by 2^13 then by 13<br />
intput:built-in frequency <br />
output:  built-in frequency divided by 2^13 then by 13 <br />
output:  built-in frequency divided by 2^13 <br />
// 13 can be modified <br />



