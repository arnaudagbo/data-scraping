require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))

mail = page.css('p:contains("@")').text
#ville = page.css('a.lientxt4')[1].text
mairie = page.css('strong a').text

#binding.pry
puts "La marie de la commune de #{mairie} a pour adresse mail #{mail}"


# page.css('title').text
# binding.pry
#puts "hello"
#puts page.text 
# /html/body/table/tbody/tr[3]/td/table/tbody/tr[1]/td[1]/table[1]/tbody/tr/td[2]/div/span/a
#body > table > tbody > tr:nth-child(3) > td > table > tbody > tr:nth-child(1) > td:nth-child(1) > table:nth-child(8) > tbody > tr:nth-child(2) > td > table > tbody > tr:nth-child(4) > td.style27 > p > font