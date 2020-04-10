cnt = 0
move = [ :￪, :￬ , :→ ,:←].repeated_permutation(12).to_a()
p move.length

move.each do | patterns |
    coordinates = [ [0 ,0] ]
    patterns.each do | single_move | 
        x ,y = coordinates.last()
        
        # move coordinates
        if single_move == :￪
            y += 1
        elsif single_move == :￬
            y -= 1
        elsif single_move == :→ 
            x += 1
        else
            x -= 1
        end
        break if coordinates.include?([x, y])
        coordinates << [x, y]
    end
    cnt += 1 if coordinates.length == 13
end
puts cnt