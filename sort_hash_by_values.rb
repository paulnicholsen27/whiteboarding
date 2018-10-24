# Given a hash of key-value pairs of strings, return an array of the keys sorted in descending order by the length of the values.

# e.g., sort({"foo": "banana", "bar": "hippopotamus", "Mississippi": "cat"})
# => ["bar", "foo", "Mississippi"]

def sort_hash_by_values(h)
    sorted_keys = []
    sorted_values = h.values.sort
    puts sorted_values
    # h.each do |key, value|
end

sort_hash_by_values({"foo": "banana", "bar": "hippopotamus", "Mississippi": "cat"})