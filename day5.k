d:0:"day5";

r1: {2<#&5>"aeiou"?/:x}; / three vowels
r2: {0<#&=':x}; / two consecutive letters
r3: {~#,/x _ss ("ab";"cd";"pq";"xy")}; / no ab/cd/pq/xy

#&(r3'd)&(r2'd)&(r1'd)

bg: {[s]{x;2#(x-1) _ s}'1+!#s}; / bigrams
u: {x@*:'=x}; / uniq

r4: {0<#&1<#:' x _ss u@bg x}; / duplicate bigram
r5: {0<#&(-2_ x)=(2_ x)}; / matches (.).\1

#&(r4'd)&(r5'd)
