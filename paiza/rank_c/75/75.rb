balance, N = gets.split(" ")
balance = balance.to_i

fares = []
N.to_s.to_i.times do
    fare = gets.to_i
    fares << fare
end

balances = []
points = []
point = 0

fares.each do |fare|
    if fare > point
        balance = balance - fare
        point += fare * 1/10
    else
        point = point - fare
    end
    balances << balance
    points << point
end

balances.zip(points) do |x, y|
    print("#{x} #{y}\n")
end
