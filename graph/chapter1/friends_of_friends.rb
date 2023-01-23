require 'set'
n, m, x = gets.split.map(&:to_i)
g = Array.new(n) { [] }

m.times do
  a, b = gets.split.map(&:to_i)
  g[a] << b
  g[b] << a
end
sets = Set.new

p g
g[x].each do |y|
  g[y].each do |z|
    sets << z
  end
end
sets.remove(x)
g[x].each do |y|
  sets.remove(y)
end
puts sets.size
