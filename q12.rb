# include integer part

answer_including_integer_part = 0
n = 0

while answer_including_integer_part == 0
    n += 1
    target_numbers = ('%10.10f'%Math.sqrt(n)).to_s.gsub('.' ,'').split("")[0..9]

    if target_numbers.uniq.length == 10
        answer_including_integer_part = n
        break
    end
end

puts  "answer_including_integer_part :" + "#{answer_including_integer_part}"

# except integer part

answer_except_integer_part = 0
n = 0

while answer_except_integer_part == 0
    n += 1
    target_numbers = ('%10.10f'%Math.sqrt(n)).to_s.gsub(/.\./,'').split("")[0..9]

    if target_numbers.uniq.length == 10
        answer_except_integer_part = n
        break
    end
end

puts  "answer_except_integer_part :" + "#{answer_except_integer_part}"

