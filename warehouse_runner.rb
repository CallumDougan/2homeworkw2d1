require_relative('./warehouse_functions.rb')


found_item_content = item_finder_content("a1")
puts "item at A1 found is #{found_item_content} - expected to be needle"

found_item_bay = item_finder_bay("needle")
puts "item is at bay #{found_item_bay}, expected to be A1"

input_1 = "a1"
input_2 = "a2"
input_3 = "a3"

found_plural_items_content = item_finder_content_plural(input_1, input_2, input_3)
puts "items at #{input_1}, #{input_2}, and #{input_3} are #{found_plural_items_content}, expected to be needle, stop sign, blouse"