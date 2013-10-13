class WebscrapeController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def shows
    data = Nokogiri::HTML(open("http://www.930.com/concerts/"))
    @concerts = data.css('.list-view-item')
  end
end
