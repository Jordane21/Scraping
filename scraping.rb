require 'rubygems'
require 'nokogiri'
require 'open-uri'

# def get_the_email_of_a_townhal_from_its_webpage
#     page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))   
#     puts page.css('td')[7].text   # => Nokogiri::HTML::Document
# end

# On définit une méthode pour scraper les noms de toutes les villes contenus dans l'url indiqué dans la méthode.
def get_all_city_name
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))   
    news_names = page.css("a.lientxt").text
end

# puts get_all_city_name

# On définit une méthode pour scraper tous les urls contenus dans l'url indiqué dans la méthode.
def get_all_the_urls_of_val_doise_townhalls
    
    page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
    links = Array.new   
    news_links = page.css(".lientxt[href]").select {|link| link2 = link['href'].gsub('./', 'https://annuaire-des-mairies.com/')}
    links.push("#{link2}")
end

def single_url
    get_all_the_urls_of_val_doise_townhalls.each do |url| puts get_all_the_urls_of_val_doise_townhalls[url]
    end
end

puts get_all_the_urls_of_val_doise_townhalls[4]

# puts get_all_the_urls_of_val_doise_townhalls

=begin On définit une méthode qui récupère les adresses mails de chaque ville en appelant la méthode get_all_the_urls_of_val_doise_townhalls
qui permet de récupérer tous les urls de chaque mairie.
=end

# def get_the_email_of_a_townhal_from_its_webpage(page_url)
#     page = Nokogiri::HTML(open(page_url))   
#     puts page.css('td')[7].text  
# end

# page_url = single_url()
# page_url.each do |url| puts get_the_email_of_a_townhal_from_its_webpage(url)
# end