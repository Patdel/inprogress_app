# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.destroy_all
Project.destroy_all

Artist.create({
  username: "Stelarc",
  biography: "Stelarc is a performance artist who has visually probed and acoustically amplified his body.",
  artist_statement: "His performances explored involuntary, remote and internet choreography of the body with electrical stimulation of the muscles",
  password: "cats",
  picture_url: "http://adm.monash.edu/records-archives/archives/memo-archive/2004-2007/assets/images/20050803/stelarc.jpg"
  })


Artist.create({
  username: "Matthew Barney",
  biography: "Matthew Barney (born March 25, 1967) is an American artist who works in sculpture, photography, drawing and film.",
  artist_statement: "The project (Cremaster) is rife with anatomical allusions to the position of the reproductive organs during the embryonic process of sexual differentiation: CREMASTER 1 represents the most ascended or undifferentiated state, CREMASTER 5 the most descended or differentiated",
  password: "cats",
  picture_url: "http://javipresss.files.wordpress.com/2011/04/matthew-barney.jpg"
  })


Artist.create({
  username: "Caprice",
  biography: "Caprice was born in Rio de Janeiro and grew up in favela Santa Marta where she learned to paint murals with local artists for a number of years. After traveling around the country during her teen years, she moved to Spain and later to Belgium where she participated in several art performances and collaborated with other artists in the creation of murals in poor neighborhoods. She has been exhibiting in galleries in solo shows as well as group show for the last ten years",
  artist_statement: "My work is a product of my search of identity in both physical as well as spiritual environments. Having been brought up in a poor area of Rio de Janeiro is something that I realize i could never escape and would not want to deny. The iconography that I use in my projects is, in part, the result of living in a country with immense social disparities, where the presence of poverty in all its forms cohabit with an explosion of celebratory human energy during carnival and during soccer matches.",
  password: "cats",
  picture_url: "http://www.flowers-cs.com/Pictures/POPPY.jpg"
  })





Project.create({
  name: "Parasite",
  description: "Event for Invaded and Involuntary Body, at the 1997 Ars Electronica Festival.",
  picture_url: "https://upload.wikimedia.org/wikipedia/en/thumb/e/ed/Stelarc_ArsElectronica97.jpg/440px-Stelarc_ArsElectronica97.jpg",
  artist_id: 1
  })

Project.create({
  name: "The Cremaster Cycle",
  description: "Barney's epic The CREMASTER Cycle (1994–2002) is a project consisting of five feature-length films that explore processes of creation.",
  picture_url: "https://upload.wikimedia.org/wikipedia/en/thumb/e/ed/Stelarc_ArsElectronica97.jpg/440px-Stelarc_ArsElectronica97.jpg",
  artist_id: 2
  })

Project.create({
  name: "Voltas",
  description: "Performance at the Beursschouwburg Art Center.",
  picture_url: "http://thisislike.com/images/big/29019-18834.jpg",
  artist_id: 3
  })







