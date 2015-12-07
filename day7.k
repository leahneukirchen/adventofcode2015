d:0:"day7";

ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:ss[;" "]' d;

/ 16-bit "arithmetics"
bits16:{-16#(16#0), 2 _vs x};
lshift:{-16#x,y#0};
rshift:{16#(y#0),x};

dp:[];
cl:[];
dep:{
  :[ "NOT"~x[0]; (dp[`$x[3]]: ,`$x[1]; cl[`$x[3]]: x)
     "AND"~x[1]; (dp[`$x[4]]: `$x[0 2]; cl[`$x[4]]: x)
     "OR"~x[1]; (dp[`$x[4]]: `$x[0 2]; cl[`$x[4]]: x)
     "LSHIFT"~x[1]; (dp[`$x[4]]: ,`$x[0]; cl[`$x[4]]: x)
     "RSHIFT"~x[1]; (dp[`$x[4]]: ,`$x[0]; cl[`$x[4]]: x)
     1; (dp[`$x[2]]: 0#`; cl[`$x[2]]: x)
  ]
};

dep' l; / trace dependencies
{dp[x]:0#`}'(,/dp[!dp]) _dvl !dp; / completion
/ now sort topologically
order:{[s]?|,/{?,/s@x}\!s}; / variant of nsl order.k
o: (order dp) _dvl `a `"1"; / drop 1 and a, instead use lx

v:[]; / variables
v[`"1"]: bits16 1; / constant 1

/ interpreter
op:{
  :["NOT"~x[0]; v[`$x[3]]: ~v[`$x[1]]
    "AND"~x[1]; v[`$x[4]]: v[`$x[0]]&v[`$x[2]]
    "OR"~x[1]; v[`$x[4]]: v[`$x[0]]|v[`$x[2]]
    "LSHIFT"~x[1]; v[`$x[4]]: lshift[v[`$x[0]];0$x[2]]
    "RSHIFT"~x[1]; v[`$x[4]]: rshift[v[`$x[0]];0$x[2]]
    1; v[`$x[2]]: bits16 0$x[0]]
};

op' cl[o];
a: 2 _sv v[`lx]

/ part 2

cl[`b]: ($a;"->";"b");
op' cl[o];
a: 2 _sv v[`lx]
