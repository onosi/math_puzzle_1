@countries = ["Brazil", "Cameroon", "Chile", "Greece", "Uruguay", "Italy", "France", "Bosnia and Herzegovina", "Germany", "USA", "Russia", "Croatia", "Spain", "Australia", "Cote d'lvoire", "Costa Rica", "Switzerland", "Honduras", "Iran", "Portugal", "Belgium", "Korea Republic", "Mexico", "Netherlands", "Colombia", "Japan", "England", "Ecuador", "Argentina", "Nigeria", "Ghana", "Algeria" ]
@is_used = Array.new(@countries.length, false)
@max_loop_count = 0

def search (country, loop_count)
    is_last = true
    @countries.each_with_index do | country2, index2|
        next if @is_used[index2]
        if country2[0] == country[-1].upcase
            is_last = false
            @is_used[index2] = true
            search(country2, loop_count + 1)
            @is_used[index2] = false
        end
    end
    @max_loop_count = [@max_loop_count, loop_count].max if is_last 
end


@countries.each_with_index do | country1, index1 |
    loop_count = 1
    @is_used[index1] = true
    search(country1, loop_count)
    @is_used[index1] = false
end

puts @max_loop_count

