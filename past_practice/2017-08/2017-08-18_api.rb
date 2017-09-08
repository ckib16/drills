require 'httparty'

class EdutechionalResty
  include HTTParty
  base_uri "http://edutechional-resty.herokuapp.com"
  
  def posts
    puts "=====> #{self.class}"
    self.class.get('/posts.json')
  end
end

api = EdutechionalResty.new
puts api.posts

puts
puts "#####"

response = HTTParty.get('http://edutechional-resty.herokuapp.com')
puts response.code

puts
puts "#####"

resty = HTTParty.get('http://edutechional-resty.herokuapp.com/posts.json')

puts resty  # => nil

resty.each do |post|
  puts "Title = #{post['title']}"
  puts "Description = #{post['description']}"
end

# >> =====> EdutechionalResty
# >> {"id"=>17, "title"=>"Testing for ApiExample", "description"=>"api example", "url"=>"http://edutechional-resty.herokuapp.com/posts/17.json"}
# >> {"id"=>18, "title"=>"asf", "description"=>"asf", "url"=>"http://edutechional-resty.herokuapp.com/posts/18.json"}
# >> {"id"=>16, "title"=>"test", "description"=>"test :v", "url"=>"http://edutechional-resty.herokuapp.com/posts/16.json"}
# >> 
# >> #####
# >> 200
# >> 
# >> #####
# >> {"id"=>17, "title"=>"Testing for ApiExample", "description"=>"api example", "url"=>"http://edutechional-resty.herokuapp.com/posts/17.json"}
# >> {"id"=>18, "title"=>"asf", "description"=>"asf", "url"=>"http://edutechional-resty.herokuapp.com/posts/18.json"}
# >> {"id"=>16, "title"=>"test", "description"=>"test :v", "url"=>"http://edutechional-resty.herokuapp.com/posts/16.json"}
# >> Title = Testing for ApiExample
# >> Description = api example
# >> Title = asf
# >> Description = asf
# >> Title = test
# >> Description = test :v