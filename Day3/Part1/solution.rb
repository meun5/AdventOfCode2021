
f = File.readlines('input.txt')

a = Array.new (f.first.length - 1), 0

f.each do |l|
    l.chars.each_with_index { |n, i| a[i] += 1 if n == '1' }
end

half = f.size / 2

gamma = a.map { |e| e < half ? 0 : 1 }
elipson = gamma.map { |e| e == 0 ? 1 : 0 }
puts a.inspect
puts gamma.inspect
puts elipson.inspect

g = gamma.join.to_s.to_i 2
e = elipson.join.to_s.to_i 2
puts g
puts e
puts g * e