n, a, b = gets.split.map(&:to_i)
s = []
while (line = gets)
  s << line.chomp
end
g = Array.new(n) { [] }
p g
s.each_with_index do |ln, i|
  chrs = ln.chars
  chrs.each_with_index do |chr, j|
    if chr == 'o'
      g[i] ||= []
      g[i] << j
    end
  end
end

if g[a]&.include?(b)
  puts 'Yes'
else
  puts 'No'
end
