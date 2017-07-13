# Array Methods
array.each # each method iterates through the array with the variable representing the value at each index.
array.each_index { |i| puts "This is index #{i}" } # each_index method iterates through the array much like the each method, however the variable represents the index number as opposed to the value at each index. It passes the index of the element into the block and you may do as you please with it. The original array is returned.
array.each_with_index { |val, idx| puts "#{idx+1}. #{val}" } # each_with_index gives us the ability to manipulate both the value and the index by passing in two parameters to the block of code. The first is the value and the second is the index. You can then use them in the block.
array.flatten # take an array that contains nested arrays and create a one-dimensional array
array.include?(argument)        # checks to see if argument given is in the array
array.product([4, 5]) # The product method can be used to combine two arrays in an interesting way. It returns an array that is a combination of all elements from all arrays.
array.sort # The sort method is a handy way to order an array. It returns a sorted array.
array.split("\n") # Splits an array into

# Hash methods
hash.fetch(:key) # The fetch method allows you to pass a given key and it will return the value for that key if it exists. You can also specify an option for return if that key is not present. Take a look at the Ruby docs to see what else is possible.
hash.has_key?(argument) # has_key? method allows you to check if a hash contains a specific key. It returns a boolean value.
hash.keys # See .values
hash.merge!(other_hash_name) # merges two hashes together. Bang optional to make destructive
hash.select { |k,v| k == :key } # The select method allows you to pass a block and will return any key-value pairs that evaluate to true when ran through the block.
hash.to_a # The to_a method returns an array version of your hash when called.
hash.values # retrieve all the keys or values out of a hash. Because it returns an array, you can do interesting things like printing out all the keys in a hash: hash.keys.each { |k| puts k }

# String methods
"My String".split(' ')  # Splits a string into an array based upon the pattern in argument (here, a space)

# Iterators
#each - iteration
array.each {|placeholder| puts placeholder}   # single line iterator

hash.each do |placeholder1, placeholder2|   # multiline iterator
  puts "This is a multi-line iterator with a hash showing key #{placeholder1} and value #{placeholder2}"
end

#map - transformation
array.select

#select - selection
array.map