require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
  data = Nokogiri::HTML(open("http://www.930.com/concerts/"))
  @concerts = data.css('.list-view-item')
  erb :shows
end

# data = Nokogiri::HTML(open("http://www.930.com/concerts/"))

# concerts = data.css('.list-view-details')

# concerts.each do |concert|
  
#   # name of the show
#   puts concert.at_css('.headliners').text.strip
  
#   # date of the show
#   puts concert.at_css('.dates').text.strip

#   # time of the show
#   puts concert.at_css('.times').text.strip

#   # sold or price
#   if concert.at_css('.custom, .sold-out').nil?
#     puts concert.at_css('.price-range')
#   else
#     puts "SOLD OUT"
#   end

#   # empty
#   puts ""
  
# end