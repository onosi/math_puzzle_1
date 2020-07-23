loap =  (1..250).each{ |n|
    n * 2
}
count = 0
counter = []

loap.each do | n |
    seihoukei = n / 2
    (1..seihoukei).each do | a_1 |
        (1..seihoukei).each do | a_2 |
            if seihoukei **2 == (seihoukei - a_1 ) ** 2 +  (seihoukei - a_2 ) ** 2 and ! counter.include?(a_1 / seihoukei.to_f)
                count += 1
                counter <<  ( a_1 / seihoukei.to_f )
            end
        end
    end
end

puts count/2