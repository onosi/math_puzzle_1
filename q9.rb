boys , girls = 20,10

answers = Array.new( boys + 1){
    Array.new(girls + 1, 0)
}
answers[0][0] = 1

(boys + 1).times do | boy |
    (girls + 1).times do | girl |
        if ( boy != girl ) and ((boys - boy) != (girls - girl))
            answers[boy][girl] += answers[boy-1][girl] if boy > 0
            answers[boy][girl] += answers[boy][girl-1] if girl > 0
        end
    end 
end

p answers[boys-1][girls] + answers[boys][girls-1]