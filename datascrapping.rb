require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'

PAGE_URL = "https://en.wikipedia.org/wiki/HTML"

# page = Nokogiri::HTML(open(PAGE_URL))

# puts page.css("title")[0].name
# puts page.css("title")[0].text

page = Nokogiri::HTML(open(PAGE_URL))
# links = page.css("#toc > ul") bon selecteur !!

binding.pry
page.css('p:contains("@")').text
# puts links.length  =>  nombre de liens !!!!
# puts links.text   # => noms des liens contenus dans le selecteur !!!
# puts links[0]["href"] # => url des liens ??
#toc > ul

# page = Nokogiri::HTML(open(PAGE_URL))

# news_links.each{|link| puts "#{link.text}\t#{link['href']}"}  

