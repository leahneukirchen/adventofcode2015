k:[];
k[`children]: 3;
k[`cats]: 7;
k[`samoyeds]: 2;
k[`pomeranians]: 3;
k[`akitas]: 0;
k[`vizslas]: 0;
k[`goldfish]: 5;
k[`trees]: 3;
k[`cars]: 2;
k[`perfumes]: 1;

d:0:"day16";
ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:{ss[x,",";" "]}' d;

s:{. {(`$-1_ x[0]), 0$-1_ x[1]}' -1 2 # 2_ x}' l; / parse
1+*&{&/(k@!x)=x@!x}'s

i:{x@&x _in\: y}; / set intersection

1+*&{f:i[!x;`cats`trees]
     l:i[!x;`pomeranians`goldfish]
     e:i[!x;`children`samoyeds`akitas`cars`perfumes`vizslas]
     &/(k[f]<x[f]),(k[l]>x[l]),(k[e]=x[e])}'s
