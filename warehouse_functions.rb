BAYS=[
{
  letter: "a", 
  number: "10",
  content: "rubber band"
},

{
  letter: "a", 
  number: "9",
  content: "glow stick"
},

{
  letter: "a", 
  number: "8",
  content: "model car"
},

{
  letter: "a", 
  number: "7",
  content: "bookmark"
},

{
  letter: "a", 
  number: "6",
  content: "shovel"
},

{
  letter: "a", 
  number: "5",
  content: "rubber duck"
},

{
  letter: "a", 
  number: "4",
  content: "hanger"
},

{
  letter: "a", 
  number: "3",
  content: "blouse"
},

{
  letter: "a", 
  number: "2",
  content: "stop sign"
},

{
  letter: "a", 
  number: "1",
  content: "needle"
},

{
  letter: "c", 
  number: "1",
  content: "rusty nail"
},

{
  letter: "c", 
  number: "2",
  content: "drill press"
},

{
  letter: "c", 
  number: "3",
  content: "chalk"
},

{
  letter: "c", 
  number: "4",
  content: "word search"
},

{
  letter: "c", 
  number: "5",
  content: "thermometer"
},

{
  letter: "c", 
  number: "6",
  content: "face wash"
},

{
  letter: "c", 
  number: "7",
  content: "paint brush"
},

{
  letter: "c", 
  number: "8",
  content: "candy wrapper"
},

{
  letter: "c", 
  number: "9",
  content: "sharpie"
},

{
  letter: "c", 
  number: "10",
  content: "leg warmers"
},

{
  letter: "b", 
  number: "1",
  content: "tyre swing"
},

{
  letter: "b", 
  number: "2",
  content: "sharpie"
},

{
  letter: "b", 
  number: "3",
  content: "picture frame"
},

{
  letter: "b", 
  number: "4",
  content: "photo album"
},

{
  letter: "b", 
  number: "5",
  content: "nail filer"
},

{
  letter: "b", 
  number: "6",
  content: "tooth paste"
},

{
  letter: "b", 
  number: "7",
  content: "bath fizzers"
},

{
  letter: "b", 
  number: "8",
  content: "tissue box"
},

{
  letter: "b", 
  number: "9",
  content: "deodorant"
},

{
  letter: "b", 
  number: "10",
  content: "cookie jar"
}

]

#later question re: relative distances - simply make a seperate array!


def item_finder_content(baynum)
  baynum_split = baynum.downcase.split(//)
  BAYS.select{|x| x[:letter] == baynum_split[0] && x[:number] == baynum_split[1]}.first[:content]
end

def item_finder_bay (item_name)
  BAYS.select{|x| x[:content] == item_name}.first[:letter] + BAYS.select{|x| x[:content] == item_name}.first[:number]
end

def item_finder_content_plural(baynum_1, baynum_2, baynum_3)
  item_finder_content(baynum_1) + " " + item_finder_content(baynum_2)+ " and " +item_finder_content(baynum_3)
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