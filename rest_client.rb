require 'rest-client'

=begin
puts "What do you want to search for? "
input = gets.chomp

input = input.split(" ")
input = input.join("+")

response = RestClient.get "https://www.bing.com/search?q=#{input}"

print "HTTP response code is #{response.code}\n"
print "HTTP response body is #{response.body}\n"
=end

class Bing
  def call_search(inp)
    inp = inp.split(" ")
    inp = inp.join("+")
  end

  def get_response(inp)
    response = RestClient.get "https://www.bing.com/search?q=#{inp}"
  end

  def print_response(response)
    print "HTTP response code is #{response.code}\n"
    print "HTTP response body is #{response.body}\n"
  end
end

a = Bing.new

input = gets.chomp
input = a.call_search(input)
res = a.get_response(input)
a.print_response(res)
