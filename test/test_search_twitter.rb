require('test/unit')
require('mocha')
require('simple_twitter.rb')
puts("Now in: " + __FILE__)

class TestSearchTwitter < Test::Unit::TestCase
  def test_search_twitter
     s = SimpleTwitter::Search.new

    file_name = File.expand_path('../test/gaga.json', File.dirname(__FILE__))
    response = stub('response', :body => File.read(file_name))
    HTTParty.expects(:get).returns(response)
    #assert_equal(response, HTTParty.get('http://search.twitter.com/search.json?q=(gaga&rpp=1'))

    tweets = s.search("gaga")
    assert(tweets.is_a?(Hash))
    assert(tweets.has_key?('results'))
  end
end
