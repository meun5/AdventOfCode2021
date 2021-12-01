
last = -1
increments = -1
File.readlines('input.txt').each_with_index  do |l, i|
    increments += 1 if l.to_i > last
    last = l.to_i
end

puts increments