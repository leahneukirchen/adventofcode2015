d:0:"day9";

ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:ss[;" "]' d;

perm: {:[1<x;,/(>:'(x,x)#1,x#0)[;0,'1+_f x-1];,!x]};

dist:[];
{.[`dist;`$x[0 2];:; 0$x[4]]
 .[`dist;`$x[2 0];:; 0$x[4]]
}'l;

places: !dist;

ds:{+/dist':x}'places@perm@#places;

&/ds / shortest route
|/ds / longest route
