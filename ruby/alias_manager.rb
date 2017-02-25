# PSUEDOCODE

# Optimal input: First name and last name, all letters 
# Non-optimal inputs: Examples: D'Angelo, one word names, names with jr


# 1. Convert it to array of separate words
# 2. Swap order of names (take into account individuals with 1 or 3 word names) 
# 3. Convert back to a string
# 4. Separate string into individual letters
def wordswap_lettersplit(string)
	array = string.split" "
	if array.length == 2
		array[0], array[1] = array[1], array[0]
	elsif array.length == 3
		array[0], array[1], array[2] = array[1], array[2], array[0]
	end
	wordswap = array.join(" ")
	lettersplit = wordswap.split""	
	return lettersplit
puts lettersplit
end

# 5. see if the each letter in an array is a vowel, exclude non-letters
# 6. if it is a vowel, move to the next vowel
# 7. if it is a constanant, move to next constanant unless vowel
# 8. Have an if statement for z and u
def fake_name(letters)
	vowel_arr = ['a', 'e', 'i', 'o', 'u']
	letters.map! do |letter|
		if vowel_arr.include?(letter.downcase)
			if letter.upcase! == nil
					if letter.downcase == vowel_arr[4]
						letter = vowel_arr[0].upcase
					else
						number = vowel_arr.index(letter.downcase)
						number = number + 1
						letter =  vowel_arr[number].upcase
					end
			else
				number = vowel_arr.index(letter.downcase)
					if number == 4
						letter = vowel_arr[0]
					else
						number = number + 1
						letter =  vowel_arr[number]
					end
			end
		elsif "abcdefghijklmnopqrstuvwxyz".include?(letter.downcase) == false
			letter = letter
		else 
				if letter.downcase == 'z'
					letter = (letter.chr.ord - 24). chr
				elsif vowel_arr.include?(letter.next.downcase) == false
					letter = letter.next
				else
					letter = letter.next.next
				end
		end
	end
letters.join("")
end

# USER CODE
def user_code
	all_names = {}
	name_input = 0
	while name_input != "quit" && name_input != ""
		puts "What is your first and last name? Type quit when done"
		name_input = gets.chomp
		if name_input == 'quit' || name_input == ""
			puts "end of program"
		else
			letters_arr = wordswap_lettersplit(name_input)
			p fake_name(letters_arr)
			all_names[name_input] = fake_name(letters_arr)
		end
	end

	all_names.each do |name, spy|
		puts "#{spy} is actually #{name}"
	end
end

p user_code



