BAYS = [
{
  baynumber: "a10", 
  content: "rubber band"
},

{
  baynumber: "a9", 
  content: "glow stick"
},

{
  baynumber: "a8", 
  content: "model car"
},

{
  baynumber: "a7", 
  content: "bookmark"
},

{
  baynumber: "a6", 
  content: "shovel"
},

{
  baynumber: "a5", 
  content: "rubber duck"
},

{
  baynumber: "a4", 
  content: "hanger"
},

{
  baynumber: "a3", 
  content: "blouse"
},

{
  baynumber: "a2", 
  content: "stop sign"
},

{
  baynumber: "a1", 
  content: "needle"
},

{
  baynumber: "c1", 
  content: "rusty nail"
},

{
  baynumber: "c2", 
  content: "drill press"
},

{
  baynumber: "c3", 
  content: "chalk"
},

{
  baynumber: "c4", 
  content: "word search"
},

{
  baynumber: "c5", 
  content: "thermometer"
},

{
  baynumber: "c6", 
  content: "face wash"
},

{
  baynumber: "c7", 
  content: "paint brush"
},

{
  baynumber: "c8", 
  content: "candy wrapper"
},

{
  baynumber: "c9", 
  content: "shoelace"
},

{
  baynumber: "c10", 
  content: "leg warmers"
},

{
  baynumber: "b1", 
  content: "tyre swing"
},

{
  baynumber: "b2", 
  content: "sharpie"
},

{
  baynumber: "b3", 
  content: "picture frame"
},

{
  baynumber: "b4", 
  content: "photo album"
},

{
  baynumber: "b5", 
  content: "nail filer"
},

{
  baynumber: "b6", 
  content: "tooth paste"
},

{
  baynumber: "b7", 
  content: "bath fizzers"
},

{
  baynumber: "b8", 
  content: "tissue box"
},

{
  baynumber: "b9", 
  content: "deodorant"
},

{
  baynumber: "b10", 
  content: "cookie jar"
}

]



def item_finder_content(baynum)
 BAYS.select{|x| x[:baynumber] == baynum}.first[:content]
end


def item_finder_bay (item_name)
  BAYS.select{|x| x[:content] == item_name}.first[:baynumber]
end

def item_finder_content_plural(baynum_1, baynum_2, baynum_3)
  item_finder_content(baynum_1) + " " + item_finder_content(baynum_2) + " and " + item_finder_content(baynum_3)
end

def item_finder_bay_plural(item_1, item_2, item_3)
  item_finder_bay(item_1) + " " + item_finder_bay(item_2) + " and " + item_finder_bay(item_3)
end

def distance_calc(baynum_1, baynum_2, baynum_3)
items = [item_finder_content(baynum_1), item_finder_content(baynum_2), item_finder_content(baynum_3)]

lowest, highest = items.map { |item| find_bay_index(item) }.minmax
highest - lowest

end

def find_bay_index(item) 
  BAYS.index { |bay| bay[:content] == item }
end