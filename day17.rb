d = File.readlines("day17").map { |x| x.to_i }
t = 150

d.sort!

$c = 0
$cs = Hash.new(0)

def r(u, s, a, t)
  if s == t
    p u
    $c += 1
    $cs[u.size] += 1
  elsif s > t
    # too high
  else
    a.each_index { |i|
      r(u + [a[i]], s+a[i], a[i+1..-1], t)
    }
  end
end

p d

r([], 0, d, t)
p $c
p $cs

# 313265 too high
