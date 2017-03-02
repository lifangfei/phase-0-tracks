# FLIGHT MODULE

module Flight
  def take_off(altitude)
    puts "#{class_name} aking off and ascending until reaching #{altitude} ..."
  end
end

# DECLARING TWO CLASSES

class Bird
	def class_name
		@class_name = "Birds"
	end
	include Flight
end

class Plane
	def class_name
		class_name = "Planes"
	end
	include Flight
end

# DRIVER CODE

bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)