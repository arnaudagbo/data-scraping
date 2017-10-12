require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL = "https://en.wikipedia.org/wiki/HTML"



page = Nokogiri::HTML(open(PAGE_URL))

 page.css('div#content div#bodyContent table.infobox tr th').each do |el|
    puts el.text
 end

