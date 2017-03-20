#PSUEDOCODE

# Notes: Tried to install Google API to keep track of flight data. Unfortunately, could not figure it out... 

# Require gems
# SQLite3 Database
# Table for routes with id, description, whether it is preferred
# Table for flights with id, departing and arrival (location, time, dates), price, foreign key
# Add, delete, search, display database

require 'sqlite3'
#require ('qpx-client')
#qpxClient = new QPXClient(options);
#  options = {
#        key: 'AIzaSyBGWpNBQXg-ssMjzSUFPE0zhH1EiUthCfI',
#        timeout: 15000
#    }

# SQLite3 Database
db = SQLite3::Database.new("flights.db")
db.results_as_hash=true

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
#Test for adding to routes and flights
p add_to_routes(db,"Directly from California to Austin", "true")
p add_to_flights(db,"SFO","AUS","2017-05-30 19:00:00.0000","2017-05-31 00:29:00.0000",184,1)

=begin

# display all manga
def display(db)
	display_all_manga = <<-SQL
		SELECT m.title, m.author, m.volume, m.complete, p.publisher from manga as m, publisher as p where m.publisher_id = p.id
	SQL

	db.execute(display_all_manga)
end

def add_to_library(db, title, author, volume, complete, publisher_id)
	add_library = <<-SQL
		INSERT INTO manga (title, author, volume, complete, publisher_id) VALUES (?, ?, ?, ?, ?)
	SQL

	db.execute(add_to_library)
end

def search(db,title)
	search_manga = <<-SQL
		SELECT title, author, volume FROM manga WHERE title = (?)
	SQL

	db.execute(search_manga)
end

def edit_library(db, title)
	edit = <<-SQL 
		UPDATE manga (title, author, volume, complete, publisher_id) set title = (?)
	SQL

	db.execute(edit_library)
end

def delete_from_library(db, title)
	library_delete = <<-SQL
		DELETE from manga where title = (?)
	SQL

	db.execute(delete_from_library)
end

#DRIVER CODE
p display(db)
p add_to_library(db,"Demon Diary", "Kara", 1, "true", 3)
p search(db,"Demon Diary")
p edit_library 
p delete_from_library(db, "Demon Diary")

#add test company
# db.execute("INSERT INTO publisher (publisher) VALUES ('Viz')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Yen Press')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Tokyopop')")
# db.execute("INSERT INTO publisher (publisher) VALUES ('Dark Horse Manga')")

#add test manga
# db.execute("INSERT INTO manga (title, author, volume, complete, publisher_id) VALUES ('Demon Diary', 'Kara', 1, 'true', 3)")
=end