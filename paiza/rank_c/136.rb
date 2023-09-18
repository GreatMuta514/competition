amount = gets.to_i
weights = []

amount.times do
    weights << gets.to_i
end

diet_day = 0
diet_days = []
for index in 1..(amount-1) do
    if weights[index - 1] > weights[index]
        diet_day += 1
        diet_days << diet_day
    else
        diet_day = 0
        diet_days << diet_day
    end
end

no_diet_day = 0
no_diet_days = []
for index in 1..(amount-1) do
    if weights[index - 1] < weights[index]
        no_diet_day += 1
        no_diet_days << no_diet_day
    else
        no_diet_day = 0
        no_diet_days << no_diet_day
    end
end

puts("#{diet_days.max} #{no_diet_days.max}")
