require 'rest-client'

puts "What do you want to search for? "
input = gets.chomp

input = input.split(" ")
input = input.join("+")

response = RestClient.get "https://www.bing.com/search?q=#{input}"

print "HTTP response code is #{response.code}\n"
print "HTTP response body is #{response.body}\n"

class Bing

  def get_chomp(inp)
    input = gets.chomp
    # input = input.split(" ")
    # input = input.join("+")
  end
end