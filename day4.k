/ use q 2014.03.27, not kona
d: "ckczppom";

md5: ![-15];

/ naive map
m:150000;
h:,/'$md5@/:d,/:$!m;
i: (5#'h) ? "00000";
i+1

/ iteration
(1+)/[{~"000000"~6#,/$md5@d,$x};1]