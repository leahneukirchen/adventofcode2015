/ use k-3.2

d:0:"day8"

ll: +/#:'d / literal length

ue:{
 s:_ssr[x;"\\\\";"z"]
 s:_ssr[s;"\\\"";"z"]
 :(#s)-2+3*+/"\\"=s
}

ml: +/ue'd / unencoded length

ll-ml

el: {2+(#x)+#&("\""=x)|("\\"=x)} / encoded length

(+/el' d)-ll
