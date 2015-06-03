
##### Seeding stock placeholder image for all events #####

@file = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/orange-beach.jpg', 'image/jpg')





######## SEEDS #########

User.destroy_all
puts "Cleared Users, itineraries dependents, and event dependents"

stephanie = User.create!(email: 'stephanie@gmail.com', password: 'stephaniepassword')
paul = User.create!(email: 'paul@gmail.com', password: 'paulpassword')
roger = User.create!(email: 'roger@gmail.com', password: 'rogerpassword')

##### Itinerary 1: Stephanie
itinerary = stephanie.itineraries.create!(name: 'Trip to Boston')
itinerary.events.create!(title: 'Duck Tour', date: '6/1/2015', location: 'Long Wharf, Boston', start_time: '07:00', end_time: '08:00', attendees: 'Max, Joe, Steve', desc: 'A boat that goes on land and water, historic tour', image: @file)
itinerary.events.create!(title: 'Library Tour', date: '06/01/2015', location: 'Copley Square', start_time: '10:00 AM', end_time: '11:00 AM', attendees: 'Max, Joe, Steve', desc: 'Tour of the Boston Public Library', image: @file)
puts "Stephanie Itinerary inserted"

##### Itinerary 2: Paul
itinerary = paul.itineraries.create!(name: 'Ireland & Scotland Week')
itinerary.events.create!(title: 'St Andrews Golf', date: '02-06-2015', location: 'Scotland', start_time: '07:00', end_time: '12:00', attendees: 'Paul, Ralph, Josh', desc: 'One of the oldest golf courses in the world', image: @file)
itinerary.events.create!(title: 'Drink at the Pub', date: 'June-02-2015', location: 'Ireland', start_time: '1:00 PM', end_time: '3:00 PM', attendees: 'Paul, Ralph, Josh, Joe', desc: 'Drink good beer and eat corned beed and hash', image: @file)
puts "Paul Itinerary inserted"

##### Itinerary 2: Roger
itinerary = roger.itineraries.create!(name: 'Neals Bachelor Party')
itinerary.events.create!(title: 'Bowling', date: '10-11-2015', location: 'Vegas Strip', start_time: '12:00', end_time: '03:00', attendees: 'Neal, Roger, Max, Joe, Steve', desc: 'Roll it straight', image: @file)
itinerary.events.create!(title: 'Dinner at Steakhouse', date: '10-12-2015', location: 'Al\'s Steakhouse', start_time: '4:00 PM', end_time: '7:00 PM', attendees: 'Neal, Roger, Max, Joe, Steve', desc: 'Drink good wine and eat steak', image: @file)
puts "Roger Itinerary inserted"
