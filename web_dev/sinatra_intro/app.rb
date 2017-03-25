# require gems
require 'sinatra'
require 'sqlite3'
require "sinatra/reloader" if development?

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end
# RELEASE 0
# A /contact route that displays an address (you can make up the address).
get '/contact' do
  "555 Road Street, San Francisco, CA"
end
# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"
get '/great_job/'do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end
# A route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?
get '/add/:number_1/:number_2' do
 "#{params[:number_1].to_i + params[:number_2].to_i}"
end
# Optional bonus: Make a route that allows the user to search the database in some way
get '/search/:name' do
  name1 = params[:name]
  age_input = db.execute("SELECT * FROM students WHERE name = #{name1}")
  
  response = ""
  age_input.each do |name|
    response << "ID: #{name['id']}<br>"
    response << "Name: #{name['name']}<br>"
    response << "Age: #{name['age']}<br>"
    response << "Campus: #{name['campus']}<br><br>"
  end
  response
end
# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end