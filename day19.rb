f = File.readlines("day19")

r = f.pop.chomp
f.pop

$m = f.map { |x| x.chomp.split(" => ") }

def ssall(t, s, r)
  z = []
  t.scan(s) { z << $`+r+$' }
  z.uniq
end

p $m.map { |s,r_| ssall(r, s, r_) }.flatten.uniq.size


a = [r]
c = 0
until a.include?("e") || a.empty?
  c += 1
  a = a.map { |t|
    $m.map { |s,r|
      ssall(t, r, s)
    }
  }.flatten.uniq
  ms = a.map{|t|t.size}.min
  a.delete_if { |t| t.size > ms }
  a = a.first(100)
end

p c
