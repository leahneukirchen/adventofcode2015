d = File.readlines("day15")

sc = []

(1..100).to_a.repeated_permutation(d.size-1) { |z|
  r = 100 - z.inject(:+)
  if r > 0
    z = z+[r]

    p d.map.with_index { |line,i| [z[i], line.split[2].to_i] }
    
    x = [2,4,6,8].map { |f|
      v = 0
      d.each.with_index { |line, i|
        v += z[i] * line.split[f].to_i
      }
      [v,0].max
    }
    
    c = 0
      d.each.with_index { |line, i|
        c += z[i] * line.split[10].to_i
      }

      next  unless c == 500

    p [:YES, x]  if x[0] != 0
    if x.inject(:*) > 0
      sc << x.inject(:*)
      p sc.last
    end
  end
}

p sc.max
