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

#=begin
db = SQLite3::Database.new("flights.db")

create_route_table = <<-SQL
CREATE TABLE IF NOT EXISTS manga(
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
		d_time VARCHAR(255),
		a_time VARCHAR(255),
		d_date DATE,
		a_date DATE,
		price INT,
		route_id INT,
		FOREIGN KEY(route_id) REFERENCES route_options(id)
	)
SQL
db.execute(create_route_table)
db.execute(create_flight_table)
=begin
# create manga table
create_manga_table = <<-SQL
	CREATE TABLE IF NOT EXISTS manga(
		id INTEGER PRIMARY KEY,
		title VARCHAR(255),
		author VARCHAR(255),
		volume INT,
		complete BOOLEAN,
		publisher_id INT,
		FOREIGN KEY (publisher_id) REFERENCES publisher(id)
	)
SQL

# create the tables
db.execute(create_publisher_table)
db.execute(create_manga_table)

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