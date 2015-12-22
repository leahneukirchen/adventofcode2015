/ use k-3.2

h: 50
m: 500

bh: 51
bd: 9

f1:{[hp;m;bhp;s;p;r;d]hp-:hardness;:[~(bhp-:3*p>0)>0;:0];:[(~hp>0)|d=0;:0i]
 m+:101*r>0;s-:1;p-:1;r-:1;d-:1
 c:0i
 :[m<53;:c]
 :[~m<53;c&:53+f2[hp;m-53;bhp-4;s;p;r;d]]
 :[~m<73;c&:73+f2[hp+2;m-73;bhp-2;s;p;r;d]]
 :[(~s>0)&~m<113;c&:113+f2[hp;m-113;bhp;6;p;r;d]]
 :[(~p>0)&~m<173;c&:173+f2[hp;m-173;bhp;s;6;r;d]]
 :[(~r>0)&~m<229;c&:229+f2[hp;m-229;bhp;s;p;5;d]]
 :c};

f2:{[hp;m;bhp;s;p;r;d]:[~(bhp-:3*p>0)>0;:0];:[(~hp>0)|d=0;:0i]
 f1[hp-1|bd-7*s>0;m+101*r>0;bhp;s-1;p-1;r-1;d-1]};

hardness:0
f1[h;m;bh;0;0;0;20]

hardness:1
f1[h;m;bh;0;0;0;20]
