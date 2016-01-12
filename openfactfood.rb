# Exercice avec API OpenFactFood

# inclusion outils ruby
require "open-uri"
require "json"

# récupération du code bar
loop do 
    
    puts "Entrez votre code barre : "
    bar_code = gets.chomp
    url="http://fr.openfoodfacts.org/api/v0/produit/#{bar_code}.json"
    json = open(url).read #variable pour stocker le résultat
    data = JSON.parse(json) # stockage des données
    
    # affichage du résultat
    puts data['product']['product_name']

end