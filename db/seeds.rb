Game.create( title: "Super Smash Bros",
             price: 29.99,
             genre: "Fighting",
             availability: "Low",
             supplier_id: 1
  )

Game.create( title: "Legend of Zelda",
             price: 49.99,
             genre: "Adventure",
             availability: "Very Low",
             supplier_id: 1
  )

Game.create( title: "Donkey Kong 64",
             price: 19.99,
             genre: "Platformer",
             availability: "High",
             supplier_id: 2
  )

Game.create( title: "Starfox 64",
             price: 39.99,
             genre: "Shooter",
             availability: "Medium",
             supplier_id: 2
  )

Game.create( title: "Goldeneye 64",
             price: 79.99,
             genre: "Shooter",
             availability: "Rare",
             supplier_id: 1
  )

Game.create( title: "Diddy Kong Racing",
             price: 49.99,
             genre: "Racer",
             availability: "Low",
             supplier_id: 1
  )

Supplier.create( name: "Abraham Lincoln",
                 phone: "8474904555",
                 email: "abrahamsandwich@gmail.com"
  )

Supplier.create( name: "Tom Hanks",
                 phone: "7728932132",
                 email: "yougotmail@aol.com"
  )

Supplier.create( name: "Halle Barry",
                 phone: "7736442229",
                 email: "whoaitshallebarry@yahoo.com"
  )

Image.create( url: "http://s.ecrater.com/stores/78479/4e9da658af681_78479n.jpg",
               game_id: 1)

Image.create( url: "https://cdn02.nintendo-europe.com/media/images/08_content_images/games_6/nintendo_6/n64_supermario64/CI7_N64_SuperMario64_Mario-throws-Bowser_CMM_big.png",
               game_id: 1)

Image.create( url: "http://nintendoagemedia.com/users/4441/collections/pc.jpg",
               game_id: 2)

Image.create( url: "http://199.101.98.242/media/images/39911-Legend_of_Zelda,_The_-_Ocarina_of_Time_(Europe)_(En,Fr,De)-2.png",
               game_id: 2)

Image.create( url: "https://img0.etsystatic.com/000/0/5657516/il_570xN.116704824.jpg",
               game_id: 3)

Image.create( url: "https://cdn02.nintendo-europe.com/media/images/03_teaser_module_1_square/games_3/nintendo_4/TM_N64_DonkeyKong64.png",
               game_id: 3)

Image.create( url: "http://thumbs4.picclick.com/d/l400/pict/222169252863_/Nintendo-64-N64-Star-Fox-64-Starfox-64.jpg",
               game_id: 4)

Image.create( url: "http://static.giantbomb.com/uploads/original/0/6899/402047-starfox64logolg.jpg",
               game_id: 4)

Image.create( url: "http://www.stoneagegamer.com/images/detailed/9/007_-_GoldenEye_(USA).png?t=1433489929",
               game_id: 5)

Image.create( url: "http://images.mentalfloss.com/sites/default/files/styles/article_640x430/public/goldeneye.png",
               game_id: 5)

Image.create( url: "http://nintendoagemedia.com/users/4441/collections/dkrnfrna.jpg",
               game_id: 6)

Image.create( url: "http://firsthour.net/screenshots/diddy-kong-racing/diddy-kong-racing-character-select-conker.jpg",
               game_id: 6)
