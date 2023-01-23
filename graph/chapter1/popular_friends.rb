n, m = gets.split(' ').map(&:to_i)

g = Array.new(n) { [] }

m.times do
  u, v = gets.split(' ').map(&:to_i)
  g[u] << v
  g[v] << u
end
max_len_index = 0
max_len = 0
g.each_with_index do |friends, i|
  if friends.length > max_len
    max_len = friends.length
    max_len_index = i
  end
end
puts g[max_len_index].sort.join(' ')
