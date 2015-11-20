BAYS = [
{
  letter: "A",
  number: "1",
  content: "needle"
},
{
  letter: "A",
  number: "2",
  content: "stop sign"
},
{
  letter: "A",
  number: "3",
  content: "blouse"
},
{
  letter: "",
  number: "",
  content: ""
},
{
  letter: "",
  number: "",
  content: ""
},
{
  letter: "",
  number: "",
  content: ""
}
]

#later question re: relative distances - simply make a seperate array!

def baynum_split

end

def item_finder_content(baynum)
  baynum_split = baynum.upcase.split(//)
  BAYS.select{|x| x[:letter] == baynum_split[0] && x[:number] == baynum_split[1]}.first[:content]
end

def item_finder_bay (item_name)
  BAYS.select{|x| x[:content] == item_name}.first[:letter] + BAYS.select{|x| x[:content] == item_name}.first[:number]
end

def item_finder_content_plural (baynum_1, baynum_2, baynum_3)

end

def item_finder_bay_plural (item_1, item_2, item_3)


end
