require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open('http://en.wikipedia.org/wiki/HTML'))
binding.pry

page.css('div#content div#bodyContent table.infobox tr th').each do |el|
   puts el.text
end