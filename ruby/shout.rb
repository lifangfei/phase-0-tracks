
# MODULE

module Shout
	def yell_angrily(words)
    	p words.upcase + "!!!" + " :("
  	end
  	def yell_happily(words)
  		p words.upcase + "!!!" + " :D"
  	end
end

# CLASSES

class Girlfriend
	include Shout
end
class Boyfriend
	include Shout
end

# DRIVER CODE

girlfriend = Girlfriend.new
girlfriend.yell_angrily("Do the dishes")

boyfriend = Boyfriend.new
boyfriend.yell_angrily("No")


=begin
# MODULE
module Shout
	def self.yell_angrily(words)
    	p words.upcase + "!!!" + " :("
  	end
  	def self.yell_happily(words)
  		p words.upcase + "!!!" + " :D"
  	end
end
# DRIVER CODE
p Shout.yell_angrily("hi")
p Shout.yell_happily("hello")
=end