def ls(s)
  n = ""
  s.scan(/(\d)\1*/) {
    n << "#{$&.size}#{$1}"
  }
  n
end

d = "1113122113"
40.times { d = ls(d) }
p d.size
10.times { d = ls(d) }
p d.size
