#!/user/bin/env ruby
require('simple_twitter')

s=SimpleTwitter::Search.new

loop do
  $stdout.write("Enter your search request:")
  param1 = $stdin.gets.chomp

  break if param1 == 'quit'

 # $stdout.write("How many responses per page would you like?")
  #param2 = $stdin.gets.chomp
  puts (s.search(param1))

 # def q
    #q = param1

    #def rpp
      #rpp = param1
end

