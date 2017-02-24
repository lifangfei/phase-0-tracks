# PSUEDOCODE

# 1. Ask designer for client information
#		a. name, age, children, theme, house size in sq feet, budget, backyard
# 2. Convert the input to data type
# 3. Print hash
# 4. Update a key once
# 5. End if designer says none
# 6. Convert answer to symbol
# 7. Update value of key
# 8. Reprint
# 9. Exit

# PROGRAM
# empty hash
client_info = {}

puts "Client's name:"
client_info[:name] = gets.chomp
puts "Client's age:"
client_info[:age] = gets.chomp.to_i
puts "Number of children:"
client_info[:children] = gets.chomp.to_i
puts "Desired theme:"
client_info[:theme] = gets.chomp
puts "Size of house in square feet:"
client_info[:size] = gets.chomp.to_i
puts "Requested budget:"
client_info[:budget] = gets.chomp.to_i
condition = 0
while condition < 1
puts "Backyard? (y/n)"
	backyard = gets.chomp
	if backyard == "y"
		client_info[:backyard] = true
		condition += 1
	elsif backyard == "n"
		client_info[:backyard] = false
		condition += 1
	end 
end

puts client_info

puts "Does a key have a mistake? (name, age, children, theme, size, budget, backyard) Type 'none' if there are no errors"
mistake = gets.chomp
if mistake == "none"
	puts client_info
else 
	puts "#{mistake} update"
	client_info[mistake.to_sym] = gets.chomp
	puts client_info
end