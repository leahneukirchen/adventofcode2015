d:{".#"?/:x}'0:"day18";

h:{-1 _ ++0,x}; n:{1 _ ++x,0};

life:{
/ breaks kona: s:(h@d)+(n@d)+(h'd)+(n'd)+(n'h@d)+(h'h@d)+(h'n@d)+(n'n@d);
s:(h@x)+(n@x)+(+h@+x)+(+n@+x)+(+n@+h@x)+(+h@+h@x)+(+h@+n@x)+(+n@+n@x);
:((x=1)&(s=2)|(s=3))|(x=0)&(s=3)
};

s: 100 life/d;
+/+/s

m:(^d)#0;
m[0 99; 0 99]: 1;

s: 100 {m|life[x]}/d;
+/+/s
