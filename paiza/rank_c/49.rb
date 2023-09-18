N = gets.to_i
array = []
array << 1
N.times do
    i = gets.to_i
    array << i
end

result = []
for N in 0..(N-1) do
    result << (array[N] - array[N+1]).abs
end

puts result.sum
