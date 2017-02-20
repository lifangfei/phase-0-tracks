=begin

Psuedocode 1
1. Count letters in the string
2. Create loop for all the letters
3. Push every letter forward
4. If there is a space, stay space, not !

Psuedocode 2
1. Count letters in the string, create loops for all the letters
2. Figure out all the numbers for each letter in the string
3. If there is a space, stay a space
4. -1 from the index for each letter
5. correspond the number with letter in "abcdefghijklmnopqrstuvwxyz"
6. print all letters together

=end

#Methods

def encrypt(words)
	length = words.length
	index = 0
		while index < length
			if words[index] == " "
				words[index] = words[index]
			elsif words[index] == "z"
				words[index] = "a"				
			else
				words[index] = words[index].next
			end
			index += 1
		end
	words.to_s
end
#puts encrypt("abc c")

def decrypt(words)
	length = words.length
	index = 0
		while index < length
			if words[index] == " "
				words[index] = words[index]
			else
				letter = words[index]
				number = "abcdefghijklmnopqrstuvwxyz".index(letter)
				number = number - 1
				words[index] = "abcdefghijklmnopqrstuvwxyz"[number]
			end
			index += 1
		end
	words.to_s
end

=begin
puts decrypt("abc c")
puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")

puts encrypt(decrypt("swordfish"))
=end

#  DRIVER CODE

# ask the user whether they would like to decrypt or encrypt a password
puts "Would you like to decrypt or encrypt a password"
action = gets.chomp

# ask the user for the password
puts "What is the password?"
password = gets.chomp

# conducts requested operation
if action == "decrypt"
	puts decrypt(password)
elsif action == "encrypt"
	puts encrypt(password)
else
	puts "please use words 'encrypt' and 'decrypt' only! (with no spaces)"
end

# exit
puts "Exit"