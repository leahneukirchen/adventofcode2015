d:"1113122113"

/ r:{o:(x=*x)?0;:[o=#x;,x;(,(o#x)),_f[o _ x]]}
r:{(0,1+&~=':x) _ x} / group consecutive elements

l:{,/ {($#x),*x}' r x} / look-and-say, 1 step

s:(40 l/d)

v: #s

s:(10 l/s) / 10 more steps
/ for some reason this takes ages...

v: #s
