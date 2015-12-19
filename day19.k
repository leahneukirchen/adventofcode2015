/ use k-3.2
ss:{1 _' (&y=y,x) _ y,x}; / split x at y
l:{ss[x;" "]@0 2}' -2 _ 0:"day19";
s:*|0:"day19";

ssall:{[x;y;z]{[n](n#x),z,(n+#y) _ x}' x _ss y} / all substitutions

#?,/{ssall[s;x@0;x@1]}'l / part 1

step1:{[s],/{ssall[s;x@1;x@0]}'l}
lim:{:[100<#x;100#x;x]}
c:0
{c+:1;r:?,/step1'x;lim@r@<#:'r}/[#:;,s];
c-1 / part 2
