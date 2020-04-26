@cnt = 0
european = [0,32,15,19,4,21,2,25,17,34,6,27,13,36,11,30,8,23,10,5,24,16,33,1,20,14,31,9,22,18,29,7,28,12,35,3,26]
american = [0,28,9,26,30,11,7,20,32,17,5,22,34,15,3,24,36,13,1,00,27,10,25,29,12,8,19,31,18,6,21,33,16,4,23,35,14,2]

def get_sum(number, array)
    max_sum = 0
    0.upto(array.length() -1 ).each do |index|
        sum = 0
        max_index = index + number -1
        (index..max_index).each do |local_index|
            sum += array[local_index % array.length()]
        end
        max_sum = sum if max_sum < sum
    end
    max_sum
end

2.upto(36).each do | n |
    @cnt += 1 if get_sum(n,european) <  get_sum(n,american) 
end

puts @cnt