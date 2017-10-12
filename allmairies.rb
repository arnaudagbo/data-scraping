require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'


# page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))



# mail = page.css('p:contains("@")').text
# mairie = page.css('strong a').text
# mairies = page.css('a.lientxt').text

# mairies.each do |mairie|

# binding.pry


 # puts "La marie de la commune de #{mairie} a pour adresse mail #{mail}"
 

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))    
ville = page.css('a.lientxt')
ville.each{|kikoo| puts ville['href']}
