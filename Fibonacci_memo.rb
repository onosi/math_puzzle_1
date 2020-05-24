@memo = {}
def Fibonacci_number(n)
    return @memo if @memo.has_key?(n)
    
    if n == 0 or n == 1
        @memo[n] = 1
        return
    end

    @memo = Fibonacci_number(n-1) + Fibonacci_number(n-2)

end
