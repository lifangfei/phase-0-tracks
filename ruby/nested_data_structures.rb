# PSUEDOCODE
# Cities as a hash
# Popular landmarks of the city as an array

# CODE
tourist_cities = {
	London: {
		name: 'London',
		flight_cost: '$817',
		tourist_attractions: [
			'London Eye',
			'Tower of London',
			'St Pauls Cathedral',
			'Buckingham Palace'
		] 
	} ,
	Bangkok: {
		name: 'Bangkok',
		flight_cost: '$925',
		tourist_attractions: [
			'Grand Palace',
			'Wat Arun',
			'Wat Phra Kaew',
			'Khaosan Road'
		] 
	} ,
	Paris: {
		name: 'Paris',
		flight_cost: '$1330',
		tourist_attractions: [
			'Eiffel Tower',
			'Notre Dame de Paris',
			'The Louvre',
			'Arc de Triomphe'
		] 
	} ,
	
	Dubai: {
		name: 'Dubai',
		flight_cost: '$725',
		tourist_attractions: [
			'Burj Khalifa',
			'Burj Al Arab',
			'Dubai Creek',
			'Palm Islands'
		] 
	}
}
# Using multiple indexes
p tourist_cities
p tourist_cities[:Dubai]
puts tourist_cities[:Dubai][:tourist_attractions][2]
puts tourist_cities[:Dubai][:tourist_attractions].length
puts tourist_cities[:Dubai][:name]
puts tourist_cities[:Dubai].keys
puts tourist_cities[:Dubai].values