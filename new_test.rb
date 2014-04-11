require 'nokogiri'
require 'open-uri'


url = "https://twitter.com/search?q=#{ARGV[0]}&src=typd"

d = Nokogiri::HTML(open(url))
p d
p d.css(".js-tweet-text tweet-text")


