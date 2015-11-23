require_relative('./warehouse_functions.rb')

puts "Please enter bay code to identify contents: "
baynum = gets.chomp.to_str
found_item_content = item_finder_content(baynum)
puts "item at #{baynum} is #{found_item_content}"

puts "enter item to search: "
item_name = gets.chomp.to_str
found_item_bay = item_finder_bay(item_name)
puts "item is at bay #{found_item_bay}, expected to be A1"

puts "Enter item bay numbers (3) to search: "
input_1 = gets.chomp.to_str 
input_2 = gets.chomp.to_str
input_3 = gets.chomp.to_str
found_plural_items_content = item_finder_content_plural(input_1, input_2, input_3)
puts "items at #{input_1}, #{input_2}, and #{input_3} are #{found_plural_items_content}"

puts "Enter item names (3) to search: "
input_1 = gets.chomp.to_str
input_2 = gets.chomp.to_str
input_3 = gets.chomp.to_str
found_bays_plural = item_finder_bay_plural(input_1, input_2, input_3)
puts "bays of assigned items are #{found_bays_plural}"

total_distance = distance_calc("b2", "b9", "b6")
puts "bay products (b2, b9, b6) are #{total_distance} bays apart"