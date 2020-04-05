# declear variables

cards = []
count = 0

1.upto(100) do |n|
    cards << [ n, :tail ]
end

# divide number and reverse cards

2.upto(100) do |n|
    cards.each do |card|
        if card[0] % n == 0
            if card[1] == :tail
                card[1] = :head
            else
                card[1] = :tail
            end
        end
    end
end

cards.each do |card|
    if card[1] == :tail
        puts card[0]
    end
end


