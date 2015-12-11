d: "hepxcrrq";

abc: _ci' (_ic "a") + !26;

inc:{abc @ 26 _vs 1+26 _sv abc ?/: x}; / broken with leading "a"...

infix:{:[y>#x;,x;x@(!y)+/:!(1-y)+#x]};

r1:{|/ {(!3)~x-*x}' infix[abc ?/: x; 3]};
r2:{~|/ (#x)> x ?/: "iol"};
r3:{1<#?x@&=':x};

p1: (inc)/[{~(r1 x)&(r2 x)&(r3 x)};d]
p2: (inc)/[{~(r1 x)&(r2 x)&(r3 x)};inc p1]
