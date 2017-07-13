hash = {a: 1, b: 2, c: 3}                 # => {:a=>1, :b=>2, :c=>3}
hash[:a]                                  # => 1
hash.keys                                 # => [:a, :b, :c]
hash.values                               # => [1, 2, 3]
hash[:a] = 5                              # => 5
hash.delete(:a)                           # => 5
hash                                      # => {:b=>2, :c=>3}
hash.select {|k,v| k == :c}               # => {:c=>3}
new_hash = hash.merge(hash) {|k,v| v*2 }  # => {:b=>4, :c=>6}
new_hash                                  # => {:b=>4, :c=>6}

string = "This is a test string"   # => "This is a test string"
string.split('')                   # => ["T", "h", "i", "s", " ", "i", "s", " ", "a", " ", "t", "e", "s", "t", " ", "s", "t", "r", "i", "n", "g"]
string.split(' ')                  # => ["This", "is", "a", "test", "string"]
string.downcase.split().join('_')  # => "this_is_a_test_string"
string.swapcase                    # => "tHIS IS A TEST STRING"
string[2, 3]                          # => "is "