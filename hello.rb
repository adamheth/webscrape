require 'nokogiri'
require 'open-uri'

data = Nokogiri::HTML(open("http://localhost:3000"))

puts data.at_css("#price").text.strip
puts data.at_css("#time").text.strip
puts data.at_css("#stock").text.strip