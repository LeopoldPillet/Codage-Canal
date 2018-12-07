function [ m ] = mem_code( tab_poly )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
a = dec2bin(oct2dec(tab_poly(1)));
b = dec2bin(oct2dec(tab_poly(2)));
[m i_1] = max(a);
[m i_2] = max(b);
m1 = length(a)-i_1+1+mod(a,3);
m2 = length(b)-i_2+1+mod(a,3);
m = m1 + m2;

end

