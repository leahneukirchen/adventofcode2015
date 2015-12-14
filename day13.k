d:0:"day13";

d:-1 _' d;

ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:ss[;" "]' d;

perm: {:[1<x;,/(>:'(x,x)#1,x#0)[;0,'1+_f x-1];,!x]};

happy:[];
{
 .[`happy;`$x[0 10];:; :["gain"~x[2];1;-1]*0$x[3]]
}'l;

ppl: !happy;
hs:{(+/happy':x,*x)+(+/happy':|x,*x)}'ppl@perm@#ppl;
|/hs / maximize happiness

{.[`happy;`Me,x;:; 0];
 .[`happy;x,`Me;:; 0]}'ppl

ppl: `Me,ppl;
hs:{(+/happy':x,*x)+(+/happy':|x,*x)}'ppl@perm@#ppl;
|/hs / maximize happiness
