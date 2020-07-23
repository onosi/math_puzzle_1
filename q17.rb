@number = 30
@male, @female = "m" , "f"

def add(seq)
    return 1 if seq.size == @number

    count = add(seq + @male)
    count += add(seq + @female) if seq[-1] == @male

    count
end

puts add(@male) + add(@female)