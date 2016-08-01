House.destroy_all
Character.destroy_all

current_house = House.create!({
  name: "Stark"
})

current_character = Character.create!({
    name: "Arya",
    img_url: "http://www.telegraph.co.uk/content/dam/tv/2016/04/20/arya-large_trans++eo_i_u9APj8RuoebjoAHt0k9u7HhRJvuo-ZLenGRumA.jpg",
    house: current_house
  })

Quote.create!({
  saying: "A girl is Arya Stark of Winterfell.",
  character: current_character
  })

Quote.create!({
  saying: "Anyone can be killed.",
  character: current_character
})


current_house = House.create!({
  name: "Baratheon"
})

current_character = Character.create!({
    name: "Stannis",
    img_url: "http://images6.fanpop.com/image/photos/34200000/got-game-of-thrones-34252779-500-500.png",
    house: current_house
  })

  Quote.create!({
    saying: "I will not become a page in someone else's history book",
    character: current_character
  })

current_character = Character.create!({
    name: "Robert",
    img_url: "http://vignette1.wikia.nocookie.net/hieloyfuego/images/e/ee/Robert_Baratheon_HBO.JPG/revision/latest?cb=20120124224134",
    house: current_house
  })

current_house = House.create!({
  name: "Tyrell"
})
