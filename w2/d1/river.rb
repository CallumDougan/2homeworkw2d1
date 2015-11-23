require_relative('classes')

fish_1 = Fish.new("salmon")
fish_2 = Fish.new("trout")
fish_3 = Fish.new("unexpected shark")
river_mike = River.new("Mike",fish_1,fish_2,fish_3)

river_mike.welcome
river_mike.health_check

bear_barry = Bear.new("Barry", "Kodiak", nil)
bear_jimmy = Bear.new("Wee Angry Jimmy", "Dropbear", nil)

bear_barry.roar
bear_jimmy.roar

bear_jimmy.catch_fish(river_mike)
bear_jimmy.food

river_mike.health_check
