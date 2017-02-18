puts "What is your hamster's name?"
hamster_name=gets.chomp
hamster_name=hamster_name.to_s
puts "What is the volume level from 1 to 10?"
volume=gets.chomp
volume=volume.to_i
puts "What is your hamster's fur color?"
fur=gets.chomp
fur=fur.to_s
valid_input=0
until valid_input==1
	puts "Is the hamster a good candidate for adoption? (y/n)"
	adoption=gets.chomp
	if adoption.to_s=="y"
		adoption=true
		valid_input=1
	elsif adoption.to_s=="n"
		adoption=false
		valid_input=1
	else 
		puts "Please only answer y or n"	
	#else adoption.to_s!="y"&&adoption.to_s!="n"
		#puts "Is the hamster a good candidate for adoption? y or n only"
		#adoption=gets.chomp
	end

end

puts "What is your hamster's estimated age (months)"
age=gets.chomp
age=age.to_i
if age>0
	age=age.to_i
else
	age=nil
end

puts "This is your hamster's data"
puts "Hamster Name: #{hamster_name}"
puts "Volume: #{volume}"
puts "Fur Color: #{fur}"
puts "Suitable for Adoption: #{adoption}"
puts "Hamster Age: #{age}"

