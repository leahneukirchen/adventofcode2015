d:0:"day6";

ss:{1 _' (&y=y,x) _ y,x}; / split x at y
ds:{0$ss[x;","]}; / split , digits
rg:{(x&y)+!(_abs x - y)+1}; / range x..y inclusive

l:ss[;" "]' d;

f:1000 1000 # 0;

on:    {f[rg . x 0 2; rg . x 1 3]:1};
off:   {f[rg . x 0 2; rg . x 1 3]:0};
toggle:{f[rg . x 0 2; rg . x 1 3]~:};

op:{
 :["on"~x[1];on[,/ds'x[2 4]]
   "off"~x[1];off[,/ds'x[2 4]]
   "toggle"~x[0];toggle[,/ds'x[1 3]]]
};

op' l;

#&,/f

/ 2nd part

f:1000 1000 # 0;

on:    {f[rg . x 0 2; rg . x 1 3]+:1};
off:   {f[rg . x 0 2; rg . x 1 3]-:1
        f[rg . x 0 2; rg . x 1 3]|:0};
toggle:{f[rg . x 0 2; rg . x 1 3]+:2};

op' l;

+/+/f
