# declear variables

x = 11

until x.to_s(2) == x.to_s(2).reverse && x.to_s(8) == x.to_s(8).reverse && x.to_s(10) == x.to_s(10).reverse
    x = x + 1
end

puts x