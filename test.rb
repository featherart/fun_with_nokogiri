require 'nokogiri'
require 'open-uri'

puts "enter a term"
term = gets.chomp 
url = "http://www.urbandictionary.com/define.php?term=#{term}"

d = Nokogiri::HTML(open(url))
puts d.css(".meaning").text


# puts d.css(".definition").last.text

# puts d.css(".word").first.text
# puts d.css(".definition").first.text