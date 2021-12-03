
depth = 0
position = 0
aim = 0

File.readlines('input.txt').each do |l|
    parts = l.split ' '

    position += parts[1].to_i if parts[0] == 'forward'
    depth += aim * parts[1].to_i if parts[0] == 'forward'
    aim += parts[1].to_i if parts[0] == 'down'
    aim -= parts[1].to_i if parts[0] == 'up'
end

puts "Depth #{depth} Position #{position} Aim #{aim}"
puts depth * position