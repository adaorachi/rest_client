# frozen_string_literal: true

require 'rest-client'

class Bing
  def call_search(inp)
    inp.split(' ').join('+')
  end

  def get_response(inp)
    RestClient.get "https://www.bing.com/search?q=#{inp}"
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
