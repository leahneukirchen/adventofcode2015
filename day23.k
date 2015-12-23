/ use k-3.2
ss:{1 _' (&y=y,x) _ y,x}; / split x at y
c:{ss[x@&~x=",";" "]}' 0:"day23";

/ recursive
run:{:[~x<#c;:r`b];o:c[x;0]~;d:`$c[x;1];
 :[o"hlf";r[d]%:2; o"tpl";r[d]*:3; o"inc";r[d]+:1; o"jmp";:run x+. c[x;1]
   o"jie";:[0=r[d]!2;:run x+. c[x;2]]; o"jio";:[1=r[d];:run x+. c[x;2]]]
 run x+1}

r[`a`b]:0 0
run[0]

r[`a`b]:1 0
run[0]

/ iteration
run2:{o:(f:c x)[0]~;d:`$f 1;j:x+.:
 :[o"hlf";r[d]%:2; o"tpl";r[d]*:3; o"inc";r[d]+:1
   o"jmp";:j f 1; o"jie";:[0=r[d]!2;:j f 2]; o"jio";:[1=r[d];:j f 2]]
 x+1}\[{x<#c};]

r[`a`b]:0 0
run2[0];
r`b

r[`a`b]:1 0
run2[0];
r`b

