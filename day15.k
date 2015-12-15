d:0:"day15";
ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:ss[;" "]' d;
v:{0$' -1 _' x@2 4 6 8}'l; / valuations
c:{0$' -1 _' x@10}'l; / calories

n:{x,100-+/x}'!3#100;
n:n@&&/'1<n; / only positive ingredients
|/{*/0|+/v*x}'n

n:n@&{500=+/c*x}'n; / only 500 calories
|/{*/0|+/v*x}'n
