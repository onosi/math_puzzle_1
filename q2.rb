# declear variables

numbers = []
ope = ["*", "+", "-", "/", ""]

1000.upto(9999) do |n|
    numbers << n
end 

for num in numbers
    a = num.to_s.chars
    for i in ope
        for j in ope
            for k in ope
                val = a[0] + i + a[1] + j + a[2]  + k + a[3]     
                next unless val.length > 4 
                next if val.include?("/0")

                # remove octal digits
                while val.match(/[*+\-\/]0\d+/)
                    val.gsub!(/[*+\-\/]0\d/){ |octal| octal.slice!("0") }
                end
                puts num if num.to_s.reverse == eval(val).to_s
            end
        end
    end
end
