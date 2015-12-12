/ k4/q with json.k loaded
d: .j.k@,/0::`day12

s1:{$[(0=@x)|(98=@x)|(9=@x);+/.z.s'x; 99=@x;.z.s@.:x; 0>@x;x; 0]}
s1 d

check:{~#&x~\:y}

s2:{$[(0=@x)|(98=@x)|(9=@x);+/.z.s'x; 99=@x;check[.:x;"red"]*.z.s@.:x; 0>@x;x; 0]}
s2 d
