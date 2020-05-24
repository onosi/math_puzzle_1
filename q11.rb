@memo = {}
def Fibonacci_number(n)

    if n == 0 or n == 1
        return @memo[n] = 1
    end

    (2..n).each do |i|
        @memo[i] = @memo[i-1] + @memo[i-2]
    end
    @memo[n]
end

answers = []
n = -1

while answers.size != 9
    n += 1
    numbers = Fibonacci_number(n)
    numbers_array = numbers.to_s.split("").map(&:to_i)

    if numbers_array.size == 1
        answers << numbers 
        next
    end
    if  numbers % numbers_array.inject(:+) == 0
        answers << numbers
    end
end

p answers
