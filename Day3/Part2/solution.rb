
f = File.readlines('input.txt').map(&:chomp)

oxygen = f
scrubber = f

index = 0
until oxygen.size == 1 || index > f.first.length
    count = oxygen.inject(0) do |s, n|
        s + n[index].to_i
    end
    most = count >= oxygen.size / 2.0 ? '1' : '0'
    puts "Count #{count} Most #{most} Index #{index}"
    oxygen = oxygen.select do |l|
        l[index] == most
    end
    puts "Amount #{oxygen.size}"
    index += 1
end

index = 0
until scrubber.size == 1 || index > f.first.length
    count = scrubber.inject(0) do |s, n|
        s + n[index].to_i
    end
    least = count >= scrubber.size / 2.0 ? '0' : '1'
    puts "Count #{count} Least #{least} Index #{index}"
    scrubber = scrubber.select do |l|
        l[index] == least
    end
    puts "Amount #{scrubber.size}"
    index += 1
end

puts oxygen.inspect
puts scrubber.inspect
puts oxygen[0].to_i(2).inspect
puts scrubber[0].to_i(2).inspect

puts oxygen[0].to_i(2) * scrubber[0].to_i(2)