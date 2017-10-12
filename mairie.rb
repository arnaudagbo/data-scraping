################# importation des bibliothèques #####################
require 'rubygems'
require 'nokogiri'   
require 'open-uri'
require 'pry'

################# scrapping de la page de la mairie de vauréal #######
page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))

mail = page.css('p:contains("@")').text
mairie = page.css('strong a').text
#ville = page.css('a.lientxt4')[1].text

#############@### Affichage des données voulues ######################
puts "La marie de la commune de #{mairie} a pour adresse mail #{mail}"


