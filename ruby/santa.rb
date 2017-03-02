# CLASS
class Santa
	def speak 
		puts "Ho, ho, ho! Haaaappy holidays!"
	end
	def eat_milk_and_cookies(cookietype)
		puts "That was a good #{cookietype}!"
	end
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance"
		@gender=gender
		@ethnicity=ethnicity
		@reindeer_ranking=["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age=0
	end
# REFRACTORED:
# Getter and setter methods
	attr_reader :age, :ethnicity, :reindeer_ranking
	attr_accessor :gender, :age
# OLD GETTER AND SETTER
# 	def age
# 		@age
#   end
# 	def ethnicity
# 		@ethnicity
#   end
# 	def gender(new_gender)
# 		@gender=new_gender
#   end
	def celebrate_birthday(age)
		@age=age+1
	end
	def get_mad_at(reindeer)
		@reindeer_ranking.delete_if {|num| num == reindeer}
		@reindeer_ranking << reindeer
	end
end

# DRIVER CODE:
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A", "racially ambiguous", "other", "European", "Asian", "Austrailian", "Middle Eastern", "African"]
10.times do 
  santas << Santa.new(example_genders.sample, example_ethnicities.sample)
end
santas.each do |santa|
	puts "Santa Profile"
	santa.age=rand(140)
	puts "Age: #{santa.age}"
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	santa.get_mad_at ("Prancer")
	puts "Reindeer Ranking: #{santa.reindeer_ranking}"
end

# OLD DRIVER CODE:
=begin
Santa_Clause=Santa.new
Santa_Clause.speak
Santa_Clause.eat_milk_and_cookies("Macademia White Chocolate")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")
end
=end
