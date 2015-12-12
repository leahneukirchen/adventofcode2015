require 'json'

d = JSON.parse(File.read("day12"))

def sum(o)
  case o
  when Hash
    sum o.values
  when Array
    o.inject(0) { |a,e| a + sum(e) }
  when Numeric
    o
  else
    0
  end
end

def sum2(o)
  case o
  when Hash
    if o.values.include?("red")
      0
    else
      sum2 o.values
    end
  when Array
    o.inject(0) { |a,e| a + sum2(e) }
  when Numeric
    o
  else
    0
  end
end

p sum(d)

p sum2(d[2][7]["h"]["c"][0]) # 96852
