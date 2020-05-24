count = 0
(0..9).to_a.permutation.each do | r , e , a , d , w , i , t , l , k , s |
    # check values
    next if r == 0 or w == 0 or t == 0 or s == 0
    next unless a + e == 9
    next unless s- w == 1 or s - w == 2
    
    # caluculate
    next unless (d + e + k) % 10 == l
    next unless (a + t + l + (d + e + k) / 10) % 10 == l
    next unless (e + i + a + 1 ) % 10 == i
    next unless (r + r + t + 1 ) % 10 == k
    next unless (w + (r + r + t + 1) / 10) == s
    count += 1
end

puts count