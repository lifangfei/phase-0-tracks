class Puppy
	def initialize
		puts "Initializing new puppy instance..."
  	end
  	def fetch(toy)
    	puts "I brought back the #{toy}!"
    	toy
  	end
  	def speak(number)
  		number.times {puts "woof"}
  	end
  	def speak2(number2)
  		puts "woof" * number2
  	end
  	def roll_over
  		puts "rolls over"
  	end
  	def dog_years(number)
  		puts number*7
  	end
  	def play_dead
  		puts "plays dead"
  	end
end

Cyrus = Puppy.new
Cyrus.fetch("tennis ball")
Cyrus.speak(2)
Cyrus.speak2(3)
Cyrus.roll_over
Cyrus.dog_years(1)
Cyrus.play_dead

class Kitten
	def initialize
		puts "Initializing new kitten instance..."
	end
	def kills(small_insect)
		puts "I removed the #{small_insect}"
	end
	def speak(number)
		number.times {puts "meow"}
	end
end 
counter = 0
kitten_set = []
while counter < 50
	kitten_set<<Kitten.new
	counter += 1
end

kitten_set.each do |kitten|
	kitten.kills("spider")
	kitten.speak(2)
end