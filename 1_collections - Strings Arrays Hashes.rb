# Practice file for Ruby Syntax. Use in IRB or in a script to load.
# - [ ] string methods
# - [ ] conversion of strings > arrays > hashes & back
# - [ ] select, map & each to iteration
# - [ ] nested collections: iteration, transformations & selections


#Strings, Arrays & Hashes: CARUD - Create, Read, Add, Update, Delete

#    Arrays
# Create array - empty
# Create array - with values
# Create "word array" or "white space separated array" of single-quoted strings
# add to array - push method
# add to array - shovel method
# add to array - specific index method; will create 'nil' values in skipped indexes as needed
# Read array
# Update new value to array position
# Delete value
# Delete position
# Delete last value in array
# Array methods

#    Hashes
# Create hash - empty
# Create hash w/ symbols -new syntax (key: value)
# Create has w/ symbols -old syntax (:key => value)
# Add new key/value to hash
# Read hash value via its key
# Update key value to a new value
# Delete key & value
# Hash Methods

#   -------
#   ANSWERS
#   -------

# Arrays
array = []                      # Create empty array
array = ["Bob", "Joe", "Fred"]  # Create with values
array = %w(bird cat dog)        # Create "word array" or "white space separated array" of single-quoted strings
                                # Use %W (uppercase) if array has string interpolation in it
array = %w(bird cat dog)+(1..3).to_a # Create word array with integers. Call `array.shuffle` to randomize order.

array.push("Tom")               # add to array - push method
array << "Jerry"                # add to array - shovel method
array[5] = "Larry"              # add to array - specific index method; will create 'nil' values in skipped indexes as needed

array[0]                        # Read first/left-most index (zero index)
array[-1]                       # Read last/right-most index
array[0..2]                     # Read first 3 indexes ("partial indexes")
array[-3..-1]                   # Read last 3 indexes
array[-1][0..2]                 # Go to the last index, then give me back the 1st 3 characters of that string

array[3] = "Jimmy"              # Update new value to array position

array.delete("Jimmy")           # Delete value
array.delete_at(3)              # Delete position
array.pop                       # Delete last value in array

# Hashes
hash = {}                                    # Create empty hash
hash = {age: 41, weight: 169, hair: "brown"} # Create hash w/ symbols -new syntax {key: value}
hash_old = {:sign => 'gemini'}             # Create hash w/ symbols -old syntax {:key => value}

hash[:gender] = "male"                     # Add new key/value to hash - just like an array

hash[:weight]                              # Read hash

hash[:weight] = 172                        # Update new value to a key

hash.delete(:height)                       # Delete key & value



# SOURCES
# http://ruby.bastardsbook.com/chapters/collections/
# http://www.sitepoint.com/guide-ruby-collections-part-arrays/
# http://ruby-doc.org/core-2.2.0/Array.html
# http://ruby-doc.org/core-2.2.0/Hash.html
# http://ruby-doc.org/core-2.2.0/String.html