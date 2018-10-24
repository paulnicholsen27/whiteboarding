# def palindrome?(s)
#     s.downcase!
#     s.gsub!(/[^a-z0-9]/i, '')
#     (0..s.length / 2).each do |index|
#         if s[index] != s[s.length - index - 1]
#             return false
#         end
#     end
#     return true
# end


# puts(palindrome?("banana") == false)
# puts(palindrome?("racecar") == true)
# puts(palindrome?("racecars") == false)
# puts(palindrome?("1234321") == true)
# puts(palindrome?("caabbaac") == true)
# puts(palindrome?("") == true)
# puts(palindrome?("go hang a salami I'm a lasagna hog"), true)


def recursive_palindrome?(s)
    s.downcase!
    s.gsub!(/[^a-z0-9]/i, '')
    if s.length <= 1
        return true
    end
    if s[0] == s[-1]
        return recursive_palindrome?(s[1...-1])
    end
    return false
end

puts(recursive_palindrome?("banana") == false)
puts(recursive_palindrome?("racecar") == true)
puts(recursive_palindrome?("racecars") == false)
puts(recursive_palindrome?("1234321") == true)
puts(recursive_palindrome?("caabbaac") == true)
puts(recursive_palindrome?("") == true)
puts(recursive_palindrome?("go hang a salami I'm a lasagna hog"), true)