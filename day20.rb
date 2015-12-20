M = 33100000
L = 1000000

a = Array.new(L+1, 0)
mj = 1_0000_0000

1.upto(L) { |i|
  i.step(L, i) { |j|
    a[j] += 10*i
    mj = [mj, j].min  if a[j] >= M
  }
}
p mj

a = Array.new(L+1, 0)
mj = 1_0000_0000

1.upto(L) { |i|
  0.upto(50) { |jj|
    j = i+i*jj
    break if j > L
    a[j] += 11*i
    mj = [mj, j].min  if a[j] >= M
  }
}
p mj
