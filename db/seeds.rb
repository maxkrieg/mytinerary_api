# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Itinerary.destroy_all
puts "Cleared itineraries and event dependents"

itinerary = Itinerary.create!(name: 'Trip to Boston')
itinerary.events.create!(title: 'Duck Tour', date: '6/1/2015', start_time: '07:00', end_time: '08:00', attendees: 'Max, Joe, Steve', desc: 'A boat that goes on land and water, historic tour', image: 'http://s3.amazonaws.com/production.reserve123/images/product/1144-2.jpg')
itinerary.events.create!(title: 'Library Tour', date: '06/01/2015', start_time: '10:00 AM', end_time: '11:00 AM', attendees: 'Max, Joe, Steve', desc: 'Tour of the Boston Public Library', image: 'http://upload.wikimedia.org/wikipedia/commons/3/30/Boston_Library_eb1.jpg')
puts "First Itinerary"

itinerary = Itinerary.create!(name: 'Ireland Week')
itinerary.events.create!(title: 'St Andrews Golf', date: '02-06-2015', start_time: '07:00', end_time: '12:00', attendees: 'Max, Joe, Steve', desc: 'One of the oldest golf courses in the world', image: 'http://www.objetivostandrews.com/img/st-andrews-golf.jpg')
itinerary.events.create!(title: 'Drink at the Pub', date: 'June-02-2015', start_time: '1:00 PM', end_time: '3:00 PM', attendees: 'Max, Joe, Steve', desc: 'Drink good beer and eat corned beed and hash', image: 'http://upload.wikimedia.org/wikipedia/commons/2/28/Irish_pub_Krakow.JPG')
puts "Second Itinerary"
