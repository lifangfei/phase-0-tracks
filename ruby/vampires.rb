puts "How many employees will be processed"
employees = gets.chomp
employees = employees.to_i

until employees == 0

	puts "What is your name?"
	name = gets.chomp
	name = name.to_s

	puts "How old are you?"
	age = gets.chomp
	age = age.to_i

	puts "What year were you born?"
	year_of_birth = gets.chomp
	year_of_birth = year_of_birth.to_i

	if 2017 - year_of_birth == age
		age_year = true
	elsif 2016 - year_of_birth == age
		age_year = true
	else 
		false
	end

	valid_input = 0
	until valid_input == 1
		puts "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
		garlic = gets.chomp
		if garlic.to_s == "y"
			garlic = true
			valid_input = 1
		elsif garlic.to_s == "n"
			garlic = false
			valid_input = 1
		else 
			puts "Please only answer 'y' or 'n'"	
		end
	end

	valid_input2 = 0
	until valid_input2 == 1
		puts "Would you like to enroll in the company’s health insurance? (y/n)"
		insurance = gets.chomp
		if insurance.to_s == "y"
			insurance = true
			valid_input2 = 1
		elsif insurance.to_s == "n"
			insurance = false
			valid_input2 = 1
		else 
			puts "Please only answer 'y' or 'n'"	
		end
	end

	valid_input3 = 0
	until valid_input3 == 1
		puts "What allergies do you have? Write them down one at a time. Enter 'done' when finished"
		allergy = gets.chomp
		allergy = allergy.to_s
		if allergy == "done"
			valid_input3 = 1
		elsif allergy == "sunshine"
			valid_input3 = 1
		else
			valid_input3 = 0
		end
	end

	if name == "Drake Cula" || name == "Tu Fang"
		status = "definitely a vampire"
	elsif !age_year && !garlic && !insurance
		status = "almost certainly a vampire"
	elsif allergy == "sunshine"
		status = "probably a vampire"
	elsif !age_year && ( !garlic || !insurance )
		status = "probably a vampire"
	elsif age_year &&  ( garlic || insurance )
		status = "probably not a vampire"
	else
		status = "under investigation"
	end

	puts "#{name} is #{status}"
	employees = employees - 1

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."


end