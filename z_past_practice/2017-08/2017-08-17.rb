# require 'pry'

# class Test
#   def initialize(alpha, bravo:, charlie: "I'm 3rd")
#     @alpha = alpha
#     @bravo = bravo
#     @charlie = charlie
#   end

#   def print_info
#     puts @alpha
#     puts @bravo
#     puts @charlie
#   end
# end

# example = Test.new("1st", bravo: "2nd")
# example.print_info
# p example
# check = Test.new("another", bravo: "check")
# p check

# File.open("past_practice/teams.txt" , 'w+')	{ |f| f.write("Twins, Astros, Mets, Yankees") }

# 10.times do
#   sleep 1
#   puts "record saved..."
#   File.open("teams.txt", "a") { |f| f.puts "Server started at #{Time.new}"}
# end

begin
  puts 8/0 
rescue StandardError => e
  puts "Error is: #{e}"    # => nil
end                        # => nil

# >> Error is: divided by 0