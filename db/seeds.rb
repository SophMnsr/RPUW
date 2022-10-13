require 'open-uri'
require 'json'

puts "Cleaning up database..."
Attempt.destroy_all
Game.destroy_all
Theme.destroy_all
Question.destroy_all
Answer.destroy_all
User.destroy_all
puts "Database cleaned"


user_1 = User.new({ nickname: "Açelya", email: 'Açelya@lewagon.com', password: 'password', password_confirmation: 'password', admin: true })
file = URI.open("https://res.cloudinary.com/ddsipddeh/image/upload/v1665413246/RPUW/Image_3_kpje1t.jpg")
user_1.photo.attach(io: file, filename: "Image_3_kpje1t", content_type: "image/png")
user_1.save!
p 'created 1 user'

user_2 = User.new({ nickname: "Sophie", email: 'Sophie@lewagon.com', password: 'password', password_confirmation: 'password', admin: false })
file = URI.open("https://res.cloudinary.com/ddsipddeh/image/upload/v1665413246/RPUW/Image_2_lqyofo.jpg")
user_2.photo.attach(io: file, filename: "Image_2_lqyofo", content_type: "image/png")
user_2.save!
p 'created 1 user'

user_3 = User.new({ nickname: "Edouard", email: 'Edouard@lewagon.com', password: 'password', password_confirmation: 'password', admin: false })
file = URI.open("https://res.cloudinary.com/ddsipddeh/image/upload/v1665413246/RPUW/Image_ffipsl.jpg")
user_3.photo.attach(io: file, filename: "Image_ffipsl", content_type: "image/png")
user_3.save!
p 'created 1 user'

user_4 = User.new({ nickname: "Adams", email: 'Adams@lewagon.com', password: 'password', password_confirmation: 'password', admin: false })
file = URI.open("https://res.cloudinary.com/ddsipddeh/image/upload/v1665413246/RPUW/Image_1_vrqwwy.jpg")
user_4.photo.attach(io: file, filename: "Image_1_vrqwwy", content_type: "image/png")
user_4.save!
p 'created 1 user'

# user_list.each do |user|
#   u = User.create!(user)
#   p u
#   p 'created 1 user'
# end


themes_list = [
  "Literature",
  "General knowledge",
  "Mythology",
  "Movies",
  "Manga & Anime",
  "Sports",
  "History",
  "Geography",
  "Science"
]

themes_list.each do |name|
  theme = Theme.create!(name: name)
  p theme
  p 'created 1 theme'
end

q_1 = Question.create(content: "Est-ce que le RAP c'était mieux avant ?", point_value: 2, theme: Theme.find_by(name: "Literature"))
Answer.create(question: q_1, content: "Largement", correct: true)
Answer.create(question: q_1, content: "La nouvelle génération est cool", correct: false)
Answer.create(question: q_1, content: "Le rock c'est mieux", correct: false)
Answer.create(question: q_1, content: "La réponse D", correct: false)
q_1.save!
p "created 1 question!"

q_2 = Question.create(content: "Entre 1973 et 1990, quel pays fut dirigé par le dictateur Augusto Pinochet ?", point_value: 1, theme: Theme.find_by(name: "History"))
Answer.create(question: q_2, content: "Chili", correct: true)
Answer.create(question: q_2, content: "Colombie", correct: false)
Answer.create(question: q_2, content: "Nicaragua", correct: false)
Answer.create(question: q_2, content: "Cuba", correct: false)
q_2.save!
p "created 1 question!"


q_3 = Question.create(content: "Qui est le 44ème président des USA ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_3, content: "Barack Obama", correct: true)
Answer.create(question: q_3, content: "Donald Trump", correct: false)
Answer.create(question: q_3, content: "Bill Clinton", correct: false)
Answer.create(question: q_3, content: "Georges W Bush", correct: false)
q_3.save!
p "created 1 question!"


q_4 = Question.create(content: "Quelle est la capitale de la Turquie ?", point_value: 1, theme: Theme.find_by(name: "Geography"))
Answer.create(question: q_4, content: "Ankara", correct: true)
Answer.create(question: q_4, content: "Istanbul", correct: false)
Answer.create(question: q_4, content: "Izmir", correct: false)
Answer.create(question: q_4, content: "Bursa", correct: false)
q_4.save!
p "created 1 question!"


q_5 = Question.create(content: "Quel est le compositeur le plus joué au monde ?", point_value: 2, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_5, content: "Beethoven", correct: true)
Answer.create(question: q_5, content: "Mozart", correct: false)
Answer.create(question: q_5, content: "Rohff", correct: false)
Answer.create(question: q_5, content: "Patrick Sébastien", correct: false)
q_5.save!
p "created 1 question!"


q_6 = Question.create(content: "Combien y a-t-il de pièces différentes dans le jeu Tetris ?", point_value: 2, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_6, content: "7", correct: true)
Answer.create(question: q_6, content: "5", correct: false)
Answer.create(question: q_6, content: "6", correct: false)
Answer.create(question: q_6, content: "8", correct: false)
q_6.save!
p "created 1 question!"


q_7 = Question.create(content: "Qui est le compositeur du slogan Mc Donald's 'I'm lovin' it' ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_7, content: "Justin Timberlake", correct: true)
Answer.create(question: q_7, content: "Drake", correct: false)
Answer.create(question: q_7, content: "Pharrell Williams", correct: false)
Answer.create(question: q_7, content: "Snoop Dog", correct: false)
q_7.save!
p "created 1 question!"


q_8 = Question.create(content: "Quelle est la capitale de l'Ecosse ?", point_value: 1, theme: Theme.find_by(name: "Geography"))
Answer.create(question: q_8, content: "Edimbourg", correct: true)
Answer.create(question: q_8, content: "Glasgow", correct: false)
Answer.create(question: q_8, content: "Leeds", correct: false)
Answer.create(question: q_8, content: "Londres", correct: false)
q_8.save!
p "created 1 question!"


q_9 = Question.create(content: "Quel était le nom original de la ville de New York ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_9, content: "New Amsterdam", correct: true)
Answer.create(question: q_9, content: "New London", correct: false)
Answer.create(question: q_9, content: "New Hamburg", correct: false)
Answer.create(question: q_9, content: "New Glasgow", correct: false)
q_9.save!
p "created 1 question!"


q_10 = Question.create(content: "Qui est le king de la terre battue à Rolland Garros ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_10, content: "Rafael Nadal", correct: true)
Answer.create(question: q_10, content: "Novak Djokovic", correct: false)
Answer.create(question: q_10, content: "Roger Federer", correct: false)
Answer.create(question: q_10, content: "Edouard Doin", correct: false)
q_10.save!
p "created 1 question!"


q_11 = Question.create(content: "Quel est le réalisateur du film 'American Graffiti' ?", point_value: 1, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_11, content: "George Lucas", correct: true)
Answer.create(question: q_11, content: "Ron Howard", correct: false)
Answer.create(question: q_11, content: "Francis Ford Coppola", correct: false)
Answer.create(question: q_11, content: "Steven Spielberg", correct: false)
q_11.save!
p "created 1 question!"


q_12 = Question.create(content: "Qui est l’ennemi de la France pendant la guerre de Cent ans ?", point_value: 3, theme: Theme.find_by(name: "History"))
Answer.create(question: q_12, content: "Angleterre", correct: true)
Answer.create(question: q_12, content: "Espagne", correct: false)
Answer.create(question: q_12, content: "Tatooine", correct: false)
Answer.create(question: q_12, content: "Narnia", correct: false)
q_12.save!
p "created 1 question!"

q_13 = Question.create(content: "Quel film-animé est célèbre pour son utilisation de musique 'Eurobeat' ?", point_value: 2, theme: Theme.find_by(name: "Manga & Anime"))
Answer.create(question: q_13, content: "Initial D", correct: true)
Answer.create(question: q_13, content: "Wangan Midnight", correct: false)
Answer.create(question: q_13, content: "Kino no Tabi", correct: false)
Answer.create(question: q_13, content: "Cowboy Bebop", correct: false)
q_13.save!
p "created 1 question!"

q_14 = Question.create(content: "Comment s'appelle le lion en peluche du manga Bleach ?", point_value: 2, theme: Theme.find_by(name: "Manga & Anime"))
Answer.create(question: q_14, content: "Kon", correct: true)
Answer.create(question: q_14, content: "Jo", correct: false)
Answer.create(question: q_14, content: "Ichigo", correct: false)
Answer.create(question: q_14, content: "Chad", correct: false)
q_14.save!
p "created 1 question!"

q_15 = Question.create(content: "Quel personnage de la mythologie Grecque a ramené sa femme Eurydice du monde des enfers ?", point_value: 2, theme: Theme.find_by(name: "Mythology"))
Answer.create(question: q_15, content: "Orphée", correct: true)
Answer.create(question: q_15, content: "Hercule", correct: false)
Answer.create(question: q_15, content: "Persée", correct: false)
Answer.create(question: q_15, content: "Dédale", correct: false)
q_15.save!
p "created 1 question!"

q_16 = Question.create(content: "De qui Hel était la fille dans la mythologie nordique ?", point_value: 2, theme: Theme.find_by(name: "Mythology"))
Answer.create(question: q_16, content: "Loki", correct: true)
Answer.create(question: q_16, content: "Thor", correct: false)
Answer.create(question: q_16, content: "Odin", correct: false)
Answer.create(question: q_16, content: "Baldr", correct: false)
q_16.save!
p "created 1 question!"

q_17 = Question.create(content: "Qui a découvert la péniciline ?", point_value: 3, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_17, content: "Alexander Flemming", correct: true)
Answer.create(question: q_17, content: "Marie Curie", correct: false)
Answer.create(question: q_17, content: "Alfred Nobel", correct: false)
Answer.create(question: q_17, content: "Louis Pasteur", correct: false)
q_17.save!
p "created 1 question!"

q_18 = Question.create(content: "Quel personnage indien dirige le Kwik-E-Mart dans Les Simpson ?", point_value: 1, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_18, content: "Apu Nahasapeemapetilon", correct: true)
Answer.create(question: q_18, content: "Charles Montgomery Burns", correct: false)
Answer.create(question: q_18, content: "Rajesh Koothrappali", correct: false)
Answer.create(question: q_18, content: "Jean Eudes Nallatamby", correct: false)
q_18.save!
p "created 1 question!"

q_19 = Question.create(content: "Dans Le Seigneur des Anneaux, combien d'anneaux furent donnés à la race des hommes ?", point_value: 1, theme: Theme.find_by(name: "Literature"))
Answer.create(question: q_19, content: "9", correct: true)
Answer.create(question: q_19, content: "7", correct: false)
Answer.create(question: q_19, content: "5", correct: false)
Answer.create(question: q_19, content: "12", correct: false)
q_19.save!
p "created 1 question!"


q_20 = Question.create(content: "La ceinture d'astéroïdes est située entre quelles planètes ?", point_value: 2, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_20, content: "Mars et Jupiter", correct: true)
Answer.create(question: q_20, content: "Jupiter et Saturne", correct: false)
Answer.create(question: q_20, content: "Mercure et Venus", correct: false)
Answer.create(question: q_20, content: "La Terre et Mars", correct: false)
q_20.save!
p "created 1 question!"


q_21 = Question.create(content: "Quel pays est resté neutre durant la Seconde Guerre Mondiale ?", point_value: 1, theme: Theme.find_by(name: "History"))
Answer.create(question: q_21, content: "Suisse", correct: true)
Answer.create(question: q_21, content: "Royaume-Uni", correct: false)
Answer.create(question: q_21, content: "France", correct: false)
Answer.create(question: q_21, content: "Italie", correct: false)
q_21.save!
p "created 1 question!"


q_22 = Question.create(content: "Quel est l'infinitif du verbe figurant dans la phrase 'Nous jouons ensemble' ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_22, content: "Jouer", correct: true)
Answer.create(question: q_22, content: "Jouir", correct: false)
Answer.create(question: q_22, content: "Jurer", correct: false)
Answer.create(question: q_22, content: "Jul", correct: false)
q_22.save!
p "created 1 question!"


q_23 = Question.create(content: "En quelle année a eu lieu la bataille d'Austerlitz ?", point_value: 2, theme: Theme.find_by(name: "History"))
Answer.create(question: q_23, content: "1805", correct: true)
Answer.create(question: q_23, content: "1790", correct: false)
Answer.create(question: q_23, content: "1815", correct: false)
Answer.create(question: q_23, content: "1825", correct: false)
q_23.save!
p "created 1 question!"

q_24 = Question.create(content: "Lequel de ces films n'est PAS sorti en 1996 ?", point_value: 2, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_24, content: "Gladiator", correct: true)
Answer.create(question: q_24, content: "Independence Day", correct: false)
Answer.create(question: q_24, content: "The Rock", correct: false)
Answer.create(question: q_24, content: "Mission: Impossible", correct: false)
q_24.save!
p "created 1 question!"


q_25 = Question.create(content: "Qui est le père de Luke Skywalker ?", point_value: 1, theme: Theme.find_by(name: "Literature"))
Answer.create(question: q_25, content: "Les 3", correct: true)
Answer.create(question: q_25, content: "Anakin Skywalker", correct: false)
Answer.create(question: q_25, content: "Dark Vador", correct: false)
Answer.create(question: q_25, content: "Darth Vader", correct: false)
q_25.save!
p "created 1 question!"

q_26 = Question.create(content: "En géométrie, quel adjectif qualifie un angle de 180° ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_26, content: "Plat", correct: true)
Answer.create(question: q_26, content: "Droit", correct: false)
Answer.create(question: q_26, content: "Aigus", correct: false)
Answer.create(question: q_26, content: "Obtus", correct: false)
q_26.save!
p "created 1 question!"

q_27 = Question.create(content: "A qui est attribué la création du Tableau périodique des éléments ?", point_value: 3, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_27, content: "Dmitri Mendeleïev", correct: true)
Answer.create(question: q_27, content: "Louis Pasteur", correct: false)
Answer.create(question: q_27, content: "Antoine Lavoisier", correct: false)
Answer.create(question: q_27, content: "Alfred Nobel", correct: false)
q_27.save!
p "created 1 question!"

q_28 = Question.create(content: "Quel est l'élément le plus présent dans l'univers ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_28, content: "L'Hydrogène", correct: true)
Answer.create(question: q_28, content: "L'Hélium", correct: false)
Answer.create(question: q_28, content: "Le Lithium", correct: false)
Answer.create(question: q_28, content: "L'Oxygen", correct: false)
q_28.save!
p "created 1 question!"

q_29 = Question.create(content: "Quelle entreprise Japonaise est le premier fabricant au monde de motocycles ?", point_value: 2, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_29, content: "Honda", correct: true)
Answer.create(question: q_29, content: "Yamaha", correct: false)
Answer.create(question: q_29, content: "Suzuki", correct: false)
Answer.create(question: q_29, content: "Kawasaki", correct: false)
q_29.save!
p "created 1 question!"

q_30 = Question.create(content: "Qui est le réalisateur du film Kill Bill ?", point_value: 1, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_30, content: "Quentin Tarantino", correct: true)
Answer.create(question: q_30, content: "Arnold Schwarzenegger", correct: false)
Answer.create(question: q_30, content: "David Lean", correct: false)
Answer.create(question: q_30, content: "Stanley Kubrick", correct: false)
q_30.save!
p "created 1 question!"

q_31 = Question.create(content: "Qui est le dieu Grec des arts, de la beauté masculine et de la guérison ?", point_value: 2, theme: Theme.find_by(name: "Mythology"))
Answer.create(question: q_31, content: "Apollon", correct: true)
Answer.create(question: q_31, content: "Déméter", correct: false)
Answer.create(question: q_31, content: "Zeus", correct: false)
Answer.create(question: q_31, content: "Athena", correct: false)
q_31.save!
p "created 1 question!"

q_32 = Question.create(content: "Quelle commande doit-on exécuter dans un CRUD si on est fainéant ?", point_value: 2, theme: Theme.find_by(name: "History"))
Answer.create(question: q_32, content: "Scaffold", correct: true)
Answer.create(question: q_32, content: "Demander au lead dev", correct: false)
Answer.create(question: q_32, content: "Attribuer la tâche au stagiaire", correct: false)
Answer.create(question: q_32, content: "Faire un ticket", correct: false)
q_32.save!
p "created 1 question!"

q_33 = Question.create(content: "De quel pays Kuala Lumpur est la capitale ?", point_value: 1, theme: Theme.find_by(name: "Geography"))
Answer.create(question: q_33, content: "Malaysie", correct: true)
Answer.create(question: q_33, content: "Indonesie", correct: false)
Answer.create(question: q_33, content: "Singapour", correct: false)
Answer.create(question: q_33, content: "Thaïlande", correct: false)
q_33.save!
p "created 1 question!"

q_34 = Question.create(content: "Quel élément, lorsqu'il est soumit à une chaleur et une pression extrème, crée le diamant ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_34, content: "Carbone", correct: true)
Answer.create(question: q_34, content: "Nitrogène", correct: false)
Answer.create(question: q_34, content: "Oxygène", correct: false)
Answer.create(question: q_34, content: "Hydrogène", correct: false)
q_34.save!
p "created 1 question!"

q_35 = Question.create(content: "Qui a volé le chat de la mère Michelle ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_35, content: "Le compère Lustucru", correct: true)
Answer.create(question: q_35, content: "L'arnaqueur de Tinder", correct: false)
Answer.create(question: q_35, content: "Celui qui a volé l'orange du marchand", correct: false)
Answer.create(question: q_35, content: "Joe Exotic", correct: false)
q_35.save!
p "created 1 question!"

q_36 = Question.create(content: "Qu'était la 'pascaline', nommé en 1642 par Blaise Pascal ?", point_value: 3, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_36, content: "La première machine à calculer", correct: true)
Answer.create(question: q_36, content: "Une formule mathématique", correct: false)
Answer.create(question: q_36, content: "Un composé chimique", correct: false)
Answer.create(question: q_36, content: "Une boisson", correct: false)
q_36.save!
p "created 1 question!"

q_37 = Question.create(content: "Qui est le véritable gagnant du tournoi de code 2022 du Wagon ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_37, content: "Tim du batch #861", correct: true)
Answer.create(question: q_37, content: "Un tricheur du batch Data", correct: false)
Answer.create(question: q_37, content: "Le batch #860", correct: false)
Answer.create(question: q_37, content: "Jar Jar le Quetar", correct: false)
q_37.save!
p "created 1 question!"

q_38 = Question.create(content: "Combien de côtés compte un trapèze?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_38, content: "4", correct: true)
Answer.create(question: q_38, content: "3", correct: false)
Answer.create(question: q_38, content: "5", correct: false)
Answer.create(question: q_38, content: "6", correct: false)
q_38.save!
p "created 1 question!"

q_39 = Question.create(content: "Le film 'Fargo' se déroule principalement dans quel état des USA ?", point_value: 1, theme: Theme.find_by(name: "Movies"))
Answer.create(question: q_39, content: "Minnesota", correct: true)
Answer.create(question: q_39, content: "Dakota du Nord", correct: false)
Answer.create(question: q_39, content: "Dakota du Sud", correct: false)
Answer.create(question: q_39, content: "Wisconsin", correct: false)
q_39.save!
p "created 1 question!"

q_40 = Question.create(content: "Quel pays partage la plus longue frontière continue avec la France ?", point_value: 1, theme: Theme.find_by(name: "Geography"))
Answer.create(question: q_40, content: "Brésil", correct: true)
Answer.create(question: q_40, content: "Espagne", correct: false)
Answer.create(question: q_40, content: "Belgique", correct: false)
Answer.create(question: q_40, content: "Suisse", correct: false)
q_40.save!
p "created 1 question!"

q_41 = Question.create(content: "Qu'est-ce que Joey ne partage pas ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_41, content: "Sa nouriture", correct: true)
Answer.create(question: q_41, content: "Sa voiture", correct: false)
Answer.create(question: q_41, content: "Son fauteuil", correct: false)
Answer.create(question: q_41, content: "Ses vêtements", correct: false)
q_41.save!
p "created 1 question!"

q_42 = Question.create(content: "Quelle histoire faut-il raconter à une femme pour la séduire selon Joey Tribbiani ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_42, content: "Une randonnée en Espagne", correct: true)
Answer.create(question: q_42, content: "Un chat à Hawaï", correct: false)
Answer.create(question: q_42, content: "Un sauvetage au Mexiquel", correct: false)
Answer.create(question: q_42, content: "Une balade à Venise", correct: false)
q_42.save!
p "created 1 question!"

q_43 = Question.create(content: "Quel est l'animal de compagnie de Ross ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_43, content: "Une perruche baptisée Suzie", correct: false)
Answer.create(question: q_43, content: "Un singe baptisé Marcel", correct: true)
Answer.create(question: q_43, content: "Un chien baptisé Joel", correct: false)
Answer.create(question: q_43, content: "Un chat baptisé Nina", correct: false)
q_43.save!
p "created 1 question!"

q_44 = Question.create(content: "Dans quel ville se déroule l'action de la série Stranger Things ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_44, content: "Hawkins", correct: true)
Answer.create(question: q_44, content: "Milwaukee", correct: false)
Answer.create(question: q_44, content: "Durtery", correct: false)
Answer.create(question: q_44, content: "Fairview", correct: false)
q_44.save!
p "created 1 question!"

q_45 = Question.create(content: "Qui est Bob Marlex ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_45, content: "Un chanteur de Regex", correct: true)
Answer.create(question: q_45, content: "Un acteur de Kung Fu", correct: false)
Answer.create(question: q_45, content: "Un danseur étoile", correct: false)
Answer.create(question: q_45, content: "Un humoriste pas très drôle", correct: false)
q_45.save!
p "created 1 question!"

q_46 = Question.create(content: "Quel est le langage le plus faciste ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_46, content: "CSS", correct: true)
Answer.create(question: q_46, content: "JS", correct: false)
Answer.create(question: q_46, content: "HTML", correct: false)
Answer.create(question: q_46, content: "PYTHON", correct: false)
q_46.save!
p "created 1 question!"

q_47 = Question.create(content: "Comment font les abeilles pour communiquer aujourd'hui ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_47, content: "Par e-miel", correct: true)
Answer.create(question: q_47, content: "Par Bzz Bzz Bzz", correct: false)
Answer.create(question: q_47, content: "Par Wifi", correct: false)
Answer.create(question: q_47, content: "Par télégramme", correct: false)
q_47.save!
p "created 1 question!"

q_48 = Question.create(content: "Qu'est-ce qui est rose et connecté ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_48, content: "Un porc USB", correct: true)
Answer.create(question: q_48, content: "Un filament rose", correct: false)
Answer.create(question: q_48, content: "Une panthère rose", correct: false)
Answer.create(question: q_48, content: "Britney Spears", correct: false)
q_48.save!
p "created 1 question!"

q_49 = Question.create(content: "Quel est l'animal préféré des développeurs ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_49, content: "Le python", correct: true)
Answer.create(question: q_49, content: "L'éléphant", correct: false)
Answer.create(question: q_49, content: "Le koala", correct: false)
Answer.create(question: q_49, content: "Le paresseux", correct: false)
q_49.save!
p "created 1 question!"

q_50 = Question.create(content: "Qu'est-ce qui court et qui se jette ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_50, content: "Une courgette", correct: true)
Answer.create(question: q_50, content: "Neymar", correct: false)
Answer.create(question: q_50, content: "Mike Powell", correct: false)
Answer.create(question: q_50, content: "Usain Bolt", correct: false)
q_50.save!
p "created 1 question!"

q_51 = Question.create(content: "Comment s'appelle la fille de Guillaume Debailly, alias Malotru ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_51, content: "Prune", correct: true)
Answer.create(question: q_51, content: "Clémentine", correct: false)
Answer.create(question: q_51, content: "Myrtille", correct: false)
Answer.create(question: q_51, content: "Framboise", correct: false)
q_51.save!
p "created 1 question!"

q_52 = Question.create(content: "En quelle année débute l'histoire de la série Stranger Things ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_52, content: "1983", correct: true)
Answer.create(question: q_52, content: "1979", correct: false)
Answer.create(question: q_52, content: "1985", correct: false)
Answer.create(question: q_52, content: "1988", correct: false)
q_52.save!
p "created 1 question!"

q_53 = Question.create(content: "Quelle est la couleur des vêtements de la Garde de Nuit ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_53, content: "Noire", correct: true)
Answer.create(question: q_53, content: "Rouge", correct: false)
Answer.create(question: q_53, content: "Verte", correct: false)
Answer.create(question: q_53, content: "Blanche", correct: false)
q_53.save!
p "created 1 question!"

q_54 = Question.create(content: "Comment est surnommé Sandor Clegane ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_54, content: "Le limier", correct: true)
Answer.create(question: q_54, content: "Le lion", correct: false)
Answer.create(question: q_54, content: "Le dragon", correct: false)
Answer.create(question: q_54, content: "Le brûlé", correct: false)
q_54.save!
p "created 1 question!"

q_55 = Question.create(content: "Quel est le second prénom de Chandler ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_55, content: "Muriel", correct: true)
Answer.create(question: q_55, content: "Maria", correct: false)
Answer.create(question: q_55, content: "Benedict", correct: false)
Answer.create(question: q_55, content: "Line", correct: false)
q_55.save!
p "created 1 question!"

q_56 = Question.create(content: "Dans quelle recette de dessert Rachel ajoute par erreur de la viande ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_56, content: "Le diplomate", correct: true)
Answer.create(question: q_56, content: "Le tiramisu", correct: false)
Answer.create(question: q_56, content: "Le pudding", correct: false)
Answer.create(question: q_56, content: "Le fraisier", correct: false)
q_56.save!
p "created 1 question!"

q_57 = Question.create(content: "Quel est le plus léger des gaz derrière l’hydrogène ?", point_value: 1, theme: Theme.find_by(name: "Science"))
Answer.create(question: q_57, content: "Hélium", correct: true)
Answer.create(question: q_57, content: "Gallium", correct: false)
Answer.create(question: q_57, content: "Oxygen", correct: false)
Answer.create(question: q_57, content: "Brome", correct: false)
q_57.save!
p "created 1 question!"

q_58 = Question.create(content: "Qui accompagne Louis De Funès dans le film 'L’aile ou la cuisse' ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_58, content: "Coluche", correct: true)
Answer.create(question: q_58, content: "Bourvil", correct: false)
Answer.create(question: q_58, content: "Michel Galabru", correct: false)
Answer.create(question: q_58, content: "Claude Gensac", correct: false)
q_58.save!
p "created 1 question!"

q_59 = Question.create(content: "Quelle est la marque de voiture de James Bond période Daniel Craig ?", point_value: 1, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_59, content: "Aston Martin", correct: true)
Answer.create(question: q_59, content: "Mercedes", correct: false)
Answer.create(question: q_59, content: "BMW", correct: false)
Answer.create(question: q_59, content: "Tesla", correct: false)
q_59.save!
p "created 1 question!"

q_60 = Question.create(content: "Sur quelle planète vit Anakin avant de partir rejoindre les Jedi ?", point_value: 3, theme: Theme.find_by(name: "General knowledge"))
Answer.create(question: q_60, content: "Tatooine", correct: true)
Answer.create(question: q_60, content: "Mustafar", correct: false)
Answer.create(question: q_60, content: "Naboo", correct: false)
Answer.create(question: q_60, content: "Dagobah", correct: false)
q_60.save!
p "created 1 question!"


# q_44 = Question.create(content: "On a dartboard, what number is directly opposite No. 1?", theme: Theme.find_by(name: "General Knowledge"))
# Answer.create(question: q_44, content: "19", correct: true)
# Answer.create(question: q_44, content: "20", correct: false)
# Answer.create(question: q_44, content: "12", correct: false)
# Answer.create(question: q_44, content: "15", correct: false)
# q_44.save!
#p "created 1 question!"
