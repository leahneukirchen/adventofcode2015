d:0:"day14";
t:2503;

ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:ss[;" "]' d;

r:+{t#((0$x@6)#0$x@3),(0$x@13)#0}'l; / incremental distance at second

|/+/r
|/+/{x=|/x}'+\r
