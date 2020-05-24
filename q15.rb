@count = 0

def move_stairs(step)
    (1..4).each do | a |
        (1..4).each do | b |
            next if step < a + b
            
            if step > a + b
                move_stairs(step - a - b )
            end

            if step == a + b  
                @count = @count + 1 
            end
        end
    end
    @count
end

puts move_stairs(10)