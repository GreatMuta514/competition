input = gets.split(' ')

amount = input[0].to_i
definition = input[1].to_i

distances = []

(amount-1).times do
    distance = gets
    distances << distance
end

result = 0

distances.each do |distance|
    if distance.to_i <= definition
        result += distance.to_i
    end
end

puts result
