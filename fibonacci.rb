# [1, 1, 2, 3, 5, 8, 13, 24 ... ]

def fibonacci(n)
    # gives back the nth number in the fibonacci list

    # build the list up to n
    fibonacci_list = [1, 1]
    (2..n).each do |position|
        fibonacci_list.push(fibonacci_list[position - 1] + fibonacci_list[position - 2])
    end

    # return the nth element (off by one)
    fibonacci_list[n-1]
end

puts fibonacci(1) == 1
puts fibonacci(4) == 3
puts fibonacci(7) == 13

def fibonacci_1(n)
    if n == 1
        1
    elsif n == 2
        1
    else
        fibonacci_1(n-1) + fibonacci_1(n-2)
    end
end

puts fibonacci_1(7)



