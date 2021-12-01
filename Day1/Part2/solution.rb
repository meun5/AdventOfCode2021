
n = File.readlines('input.txt').map(&:to_i)

increments = 0

for i in 1..(n.length - 3)
    increments += 1 if (
            n[i] + n[i + 1] + n[i + 2]
        ) > (
            n[i - 1] + n[i] + n[i + 1]
        )
end

puts increments