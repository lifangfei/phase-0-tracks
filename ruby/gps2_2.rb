# METHODS

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Create empty hash
  # Separate all the input items by spaces
  # while still less than item number in an array  
  # Put all the items into the hash as keys
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_grocery_list(items)
	grocery_list = {}
	items =  items.split
	items.each do |item|
		if grocery_list[item]
			grocery_list[item] += 1
		else	
			grocery_list[item] = 1
		end
	end
	grocery_list
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: quantity defaults to 1 
# add the item with the quantity to the hash
# output: print the hash

def add_items(list, item_name, quantity=1)
	list[item_name] = quantity
	list
end

# Method to remove an item from the list
# input: list, item
# steps: remove item from list
# output: hash with less items

def remove_items(list, item)
	list.delete(item)
	list
end

# Method to update the quantity of an item
# input: list, item, new quantity
# steps: find item in list, assign new quantity
# output: hash with updated quantity for item

def update_quantity(list, item, updated_quantity=1)
	list[item] = updated_quantity
	list
end
grocery_list = create_grocery_list("carrots apples cereal pizza")
grocery_list = add_items(grocery_list, "cookies", 5)
grocery_list = add_items(grocery_list, "crackers", 4)

# Method to print a list and make it look pretty
# input: list, items, quantities for every action item
# steps: prompts for every method
# output: printed grocery list

# USER CODE

puts "What would you like to buy today? Items should be one word separated with spaces"
user_items = gets.chomp
grocery_list = create_grocery_list(user_items)

continue = "yes"
until continue == "no"
	puts "What item would you like to add? Type 'no' if done"
	response = gets.chomp
	if response == "no"
		continue = "no"
	else
		added_item = response	
		puts "How many #{added_item}(s) would you like to purchase?"
		added_item_quantity = gets.chomp
	end
end
grocery_list = add_items(grocery_list, added_item, added_item_quantity)

continue2 = "yes"
until continue2 == "no"
	puts "What item would you like to delete? Type 'no' if done"
	response2 = gets.chomp
	if response2 == "no"
		continue2 = "no"
	else
		deleted_item = response2
	end
end
grocery_list = remove_items(grocery_list, deleted_item)

continue3 = "yes"
until continue3 == "no"
	puts "What item would you like to update quantities for? Type 'no' if done"
	response3 = gets.chomp
	if response3 == "no"
		continue3 = "no"
	else
		updated_item = response3	
		puts "What is the new quantity for #{updated_item}?"
		updated_item_quantity = gets.chomp
	end
end
grocery_list = update_quantity(grocery_list, updated_item, updated_item_quantity)

p grocery_list

=begin
What did you learn about pseudocode from working on this challenge?
Psuedocode sometimes isn't the most useful if there aren't enough steps in the problem. 
But I also learned about what happens if you want decide to change your logic through coding

What are the tradeoffs of using arrays and hashes for this challenge?
Arrays are easier to use certain built-in methods for, but hashes are ultimately more useful for numbers

What does a method return?
The last data result, good to know what is coming out of a method

What kind of things can you pass into methods as arguments?
Any parameter such as arrays, strings, integers, hashes, booleans, etc. 

How can you pass information between methods?
Declaring the method outside of the local scope

What concepts were solidified in this challenge, and what concepts are still confusing?
I better understood implicit and explicit returns and about truthy/falsey and having optional parameters
I think this really opened up a new world of trying to make my code more efficient
=end