# You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.

# Write a method get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products.

# For example, given:

#   [1, 7, 3, 4]

# your method would return:

#   [84, 12, 28, 21]

# by calculating:

#   [7 * 3 * 4,  1 * 3 * 4,  1 * 7 * 4,  1 * 7 * 3]

# Here's the catch: You can't use division in your solution!

def get_products_of_all_ints_except_at_index(arr)
    products = []
    (0...arr.length).each do |index|
        product = 1
        arr.each do |num|
            if num != arr[index]
                product *= num
            end
        end
        products << product 
    end
    products
end

puts get_products_of_all_ints_except_at_index([1, 7, 3, 4]) == [84, 12, 28, 21]