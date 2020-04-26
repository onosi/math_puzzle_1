def Fibonacci_number(n)
    if n == 1 or n == 2
        return 1
    end
    Fibonacci_number(n-1) + Fibonacci_number(n-2)
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
