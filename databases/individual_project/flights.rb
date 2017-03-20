#PSUEDOCODE

# Notes: Tried to install Google API to keep track of flight data. Unfortunately, could not figure it out... 

# Require gems
# SQLite3 Database
# Table for routes with id, description, whether it is preferred
# Table for flights with id, departing and arrival (location, time, dates), price, foreign key
# Add, delete, search, display database

require 'sqlite3'
# COULD NOT GET THIS TO WORK (GOOGLE QPX API)
#require ('qpx-client')
#qpxClient = new QPXClient(options);
#  options = {
#        key: 'AIzaSyBGWpNBQXg-ssMjzSUFPE0zhH1EiUthCfI',
#        timeout: 15000
#    }

# SQLite3 Database
db = SQLite3::Database.new("flights.db")
db.results_as_hash = true

# Set up tables for route and flight data
create_route_table = <<-SQL
CREATE TABLE IF NOT EXISTS route_options(
		id INTEGER PRIMARY KEY,
		description VARCHAR(255),
		preference BOOLEAN
	)
SQL
create_flight_table = <<-SQL
	CREATE TABLE IF NOT EXISTS flights(
		id INTEGER PRIMARY KEY,
		d_location VARCHAR(255),
		a_location VARCHAR(255),
		d_datetime TEXT,
		a_datetime TEXT,
		price INT,
		route_id INT,
		FOREIGN KEY(route_id) REFERENCES route_options(id)
	)
SQL
# Create the tables
db.execute(create_route_table)
db.execute(create_flight_table)

# Add to the routes
def add_to_routes(db, description, preference)
	db.execute("INSERT INTO route_options(description, preference) VALUES (?, ?)",[description, preference])
end
# Add to the flights
def add_to_flights(db, d_location, a_location, d_datetime, a_datetime, price, route_id)
	db.execute("INSERT INTO flights(d_location, a_location, d_datetime, a_datetime, price, route_id) VALUES (?,?,?,?,?,?)",[d_location, a_location, d_datetime, a_datetime, price, route_id])
end
# Test for adding to routes and flights
p add_to_routes(db,"Directly from California to Austin", "true")
p add_to_flights(db,"SFO","AUS","2017-05-30 19:00:00.0000","2017-05-31 00:29:00.0000",184,1)

# View routes
def view(db,route)
	db.execute("SELECT route_options.id, flights.d_location, flights.a_location, flights.d_datetime, flights.a_datetime, flights.price FROM flights JOIN route_options ON flights.route_id = route_options.id")
end
# Test for viewing routes
p view(db,1)

# Update the routes
# Not too sure how to update multiple things at once, can only assume to use a if/else statement D:
def update_routes_description(db, description, id)
	db.execute("UPDATE route_options SET description = ? WHERE id = ?", [description, id])
end
def update_routes_preference(db, preference, id)
	db.execute("UPDATE route_options SET preference = ? WHERE id = ?", [preference, id])
end
# Test for updating routes
#p update_routes_description(db, "lalala", 1)

# Delete the routes
def delete_routes(db, id)
	db.execute("DELETE FROM route_options WHERE id = ?", [id])
end
# Test for deleting routes
#p delete_routes(db, 1)

# DRIVER CODE
puts "What would you like to do? (Add route, add flight, view routes, update routes, delete routes, 'q' to quit)"
answer = gets.chomp

	
puts "Write a description"
description = gets.chomp
correct = false
while correct == false
	puts "Is this your preferred route? (true or false)"
	preference = gets.chomp
	if preference == "true"
		correct = true
		preference = true
	elsif preference == "false"
		preference = false
		correct = true
	end
end

puts "Starting airport, ending airport, date/time departure, date/time arrival, price, route number in this format (SFO,AUS,YYYY-MM-DD HH:MM:SS.SSSS,YYYY-MM-DD HH:MM:SS.SSSS,#####,#)"
flight_array=gets.chomp.split(',')
flight_array[5]=flight_array[5].to_i
flight_array[6]=flight_array[6].to_i

puts "What route would you like to view?"
view_route=gets.chomp.to_i

puts "What is your new description?"
update_description = gets.chomp

pass = false
while pass == false
	puts "What is the new preference? (true or false)"
	preference = gets.chomp
	if preference == "true" || preference == "false"
		pass = true
	end
end

puts "What route would you like to delete?"
delete_route=gets.chomp.to_i		