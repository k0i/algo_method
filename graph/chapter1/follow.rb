n, m = gets.split(' ').map(&:to_i)
g = Array.new(n) { [] }
m.times do
  a, b = gets.split(' ').map(&:to_i)
  g[a] << b
end
g.map!(&:sort)
g.each do |e|
  puts e.join(' ')
end
