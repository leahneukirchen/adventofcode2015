d:0$'0:"day24";

/ n:3;
n:4;

/ stupid eager brute forcing
r:{b::n#0; p:: (n;0)#(); { p[*<b],:x; b[*<b]+:x }'x; :[b~n#(+/d)%n; p; ()]};

s:{x::();
 while[x~();x::r[d@(-#d)?#d]];
 m::m& */x@*<#:'x;
 `0:($m),"\n";};

m:0I;
while[1;s[]];
