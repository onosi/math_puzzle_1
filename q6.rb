cnt = 0
2.step(10000, 2).each do |default_number|
    n = default_number * 3 + 1
    while !(n == default_number or n ==1 )
        if n % 2 == 0
            n = n/2
        else
            n = n*3 + 1
        end
    end
    
    if n == default_number
        cnt += 1
    end
end

puts cnt