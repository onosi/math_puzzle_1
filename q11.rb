@memo = {}
def Fibonacci_number(n)
    return @memo[n] if @memo.has_key?(n)
    
    if n == 0 or n == 1
        return @memo[n] = 1
    end

    @memo[n] = Fibonacci_number(n-1) + Fibonacci_number(n-2)
    @memo[n]
end

answers = []
n = 2

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
