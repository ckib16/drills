def stream_movie title:, lang: 'English'
  puts title
  puts lang
end

stream_movie title: 'The Fountainhead' 

def sms_generator(api_key:, num:, msg:, locale:)
  puts api_key
  puts num
  puts msg
  puts locale
end

sms_generator(api_key: '82u3ojerw', msg: 'hey there', num: 5555555555, locale: 'US')

###

def roster(*players)
  puts players
end

roster('Altuve', 'Gattis', 'Springer')

###

def roster(**players_with_positions)
  players_with_positions.each do |player, position|
    puts "Player: #{player}"
    puts "Position: #{position}"
    puts "\n"
  end
end

data = {
  "Altuve": "2nd Base",
  "Alex Bregman": "3rd Base",
  "Evan Gattis": "Catcher",
  "George Springer": "OF"
}
roster(data)

## 

def invoice(options={})
  puts options[:company] 
  puts options[:total]
  puts options[:something_else]
end

invoice(company: "Google", total: 123, state: "AZ")