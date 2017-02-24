#block method
def holiday_greeting
	puts "Hi"
	yield("Banana Bread", "Tiffany")
end
holiday_greeting { |holiday, name| puts "Happy #{holiday} Day, #{name}!"}

#array
cookies = ["chocolate_chip", "snickerdoodle","sugar", "macademia_white_chocolate", "shortbread"]

#hash
cookie_orders = {:chocolate_chip=>10, :snickerdoodle=>3,:sugar=>5, :macademia_white_chocolate=>12, :shortbread=>6}

#data structures before
p cookies
p cookie_orders

#each - array
cookies.each do |cookie|
	puts cookie
end
p cookies

#each - hash
cookie_orders.each do |cookie, orders|
	puts "There are #{orders} orders of #{cookie} cookies"
end
p cookie_orders

#map! - array
cookies.map! do |cookie|
	cookie.upcase
end
p cookies

# Release 2: Using the Documentation:

number = [1, 2, 3, 4, 5]
number_hash = {:a=>1, :b=>2, :c=>3}

# array: deleting if less than
number = [1, 2, 3, 4, 5]
number.delete_if {|num| num < 5}
p number

# array: satisfy a certain condition
number = [1, 2, 3, 4, 5]
number.select! {|num| num < 3}
p number

number = [1, 2, 3, 4, 5]
number.keep_if {|num| num < 5}
p number

# array: deletes until evaluates as false
number = [1, 2, 3, 4, 5]
	number2 = number.drop_while {|num| num < 3}
p number2

# hash: deleting if less than
number_hash = {:a=>1, :b=>2, :c=>3}
number_hash.delete_if {|key, value| key.to_s > "a"}
p number_hash

# hash: satisfy a certain condition
number_hash = {:a=>1, :b=>2, :c=>3}
number_hash.keep_if {|key, value| key.to_s > "a"}
p number_hash

number_hash = {:a=>1, :b=>2, :c=>3}
number_hash.select! {|key, value| key.to_s > "a"}
p number_hash

# hash: deletes until evaluates as false
number_hash = {:a=>1, :b=>2, :c=>3}
number_hash.reject! {|key, value| key.to_s > "a"}
p number_hash