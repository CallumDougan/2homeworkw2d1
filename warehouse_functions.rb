BAYS = [
{
  letter: "A",
  number: "1",
  content: "nail polish"
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

def item_finder(baynum)
  input_array = baynum.upcase.split(//)
  BAYS.select{|x| x[:letter] == input_array[0] && x[:number] == input_array[1]}.first[:content]
end



