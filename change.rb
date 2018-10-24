# Write a function that accepts two parameters:  the cost of an item and the amount 
# paid for it, and prints the numbers and denominations of U.S. bills and coins that 
# should be returned in change.  Your function should use the fewest amount of bills
# and coins possible.  The total amount of change needed will not be greater than 
# twenty dollars

# eg:  make_change(2.36, 5) should return:

# 2 - 1.00
# 2 - .25
# 1 - .10
# 4 - .01

def make_change(cost, payment)
    change = {}
    total_change = payment.to_f - cost
    denominations = [20.0, 10.0, 5.0, 1.0, 0.25, 0.10, 0.05, 0.01]
    while total_change >= 0.01
        denominations.each do |d|
            change[d] = (total_change / d).to_i
            total_change = total_change % d
        end
    end
    change.each do |value, quantity|
        if quantity > 0
            puts "#{quantity} - #{'%.2f' % value}"
        end
    end
end

puts make_change(2.36, 5)