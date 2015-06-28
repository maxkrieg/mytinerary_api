
##### Seeding stock placeholder image for all events #####

@file_one = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image001.jpg', 'image/jpg')
@file_two = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image002.jpg', 'image/jpg')
@file_three = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image003.jpg', 'image/jpg')
@file_four = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image004.jpg', 'image/jpg')
@file_five = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image005.jpg', 'image/jpg')
@file_six = Rack::Test::UploadedFile.new(Rails.root + 'starter_images/image006.jpg', 'image/jpg')


######## SEEDS #########

User.destroy_all
puts "Cleared Users, itineraries dependents, and event dependents"

stephanie = User.create!(first_name: 'Stephanie', last_name: 'Wong', email: 'stephanie@gmail.com', password: 'stephanie123')
paul = User.create!(first_name: 'Paul', last_name: 'Dacey', email: 'paul@gmail.com', password: 'paul123')
roger = User.create!(first_name: 'Roger', last_name: 'Rabbit', email: 'roger@gmail.com', password: 'roger123')
puts "Users created"


##### Itinerary 1: Stephanie
itinerary = stephanie.itineraries.create!(name: 'Trip to Boston')
itinerary.events.create!(title: 'Duck Tour', date: '06/07/2015', location: 'Long Wharf, Boston', start_time: '07:00', end_time: '08:00', attendees: 'Max, Joe, Steve', desc: 'Quinoa Pitchfork laborum do, deep v normcore pop-up quis Vice nesciunt dolore PBR ut. Fugiat chia commodo, fashion axe viral flannel lomo id banjo ea. Nesciunt ullamco church-key accusamus, fashion axe quinoa fingerstache wolf street art. Proident Marfa sustainable beard kogi slow-carb. YOLO duis nulla 8-bit Godard bicycle rights aliqua. Cliche quinoa consectetur, slow-carb pariatur tilde excepteur scenester Austin eu aute. Fugiat veniam anim duis id, salvia officia paleo selfies fingerstache non proident Odd Future fap master cleanse.', image: @file_one)
itinerary.events.create!(title: 'Library Tour', date: '06/04/2015', location: 'Copley Square', start_time: '10:00', end_time: '11:00', attendees: 'Max, Joe, Steve', desc: 'Nesciunt skateboard occupy, distillery narwhal in ex deserunt exercitation. DIY lomo irony cronut, pour-over occaecat odio placeat flannel. In mustache VHS, +1 cronut flexitarian aesthetic selvage. Aliquip esse health goth Bushwick try-hard leggings banjo tousled anim, ullamco vegan artisan single-origin coffee typewriter DIY. Freegan tilde viral squid excepteur wayfarers laboris pariatur, duis ut cillum Helvetica. Consectetur pork belly Marfa, adipisicing jean shorts forage cupidatat. Meditation artisan nostrud distillery mumblecore meggings.', image: @file_two)

puts "Stephanie Itinerary  and Events inserted"


##### Itinerary 2: Paul
itinerary = paul.itineraries.create!(name: 'Ireland & Scotland Week')
itinerary.events.create!(title: 'St Andrews Golf', date: '02/06/2015', location: 'Scotland', start_time: '07:00', end_time: '12:00', attendees: 'Paul, Ralph, Josh', desc: 'Accusamus asymmetrical four dollar toast, Etsy vinyl commodo plaid minim. Delectus proident Marfa, selfies ut exercitation esse shabby chic letterpress meggings pickled bitters locavore. Sartorial deep v id, VHS retro yr Bushwick sed nesciunt narwhal. Commodo Helvetica sriracha, PBR excepteur ugh tattooed yr pariatur non pork belly umami paleo. Portland PBR mlkshk lumbersexual church-key street art irure. Deserunt distillery beard, artisan PBR dreamcatcher Carles tousled Thundercats Shoreditch crucifix drinking vinegar. Stumptown culpa deep v, delectus gastropub Vice kale chips 8-bit lo-fi normcore Austin.', image: @file_three)
itinerary.events.create!(title: 'Drink at the Pub', date: '02/05/2015', location: 'Ireland', start_time: '15:00 PM', end_time: '17:00 PM', attendees: 'Paul, Ralph, Josh, Joe', desc: 'Cred occupy mumblecore, chambray street art do meditation nesciunt. Irony quis Vice magna, placeat meh American Apparel scenester duis pariatur nesciunt. Viral tote bag four dollar toast laborum, id Bushwick vero irure scenester. Ethical Thundercats placeat wayfarers, 8-bit keffiyeh sed craft beer sustainable minim nulla. In Bushwick laborum Helvetica, pug asymmetrical ut meh hella. VHS actually Thundercats cliche. Meditation organic crucifix sint, cupidatat synth anim health goth skateboard chillwave.', image: @file_four)

puts "Paul Itinerary and Events inserted"


##### Itinerary 2: Roger
itinerary = roger.itineraries.create!(name: 'Neals Bachelor Party')

itinerary.events.create!(title: 'Strip Club', date: '01/06/2015', location: 'Vegas Strip', start_time: '12:00', end_time: '15:00', attendees: 'Neal, Roger, Max, Joe, Steve', desc: 'Ut organic aliquip id, sriracha accusamus heirloom meditation +1 lomo Odd Future Etsy asymmetrical. Williamsburg biodiesel master cleanse normcore Austin, polaroid stumptown plaid tilde shabby chic drinking vinegar seitan mollit four loko Blue Bottle. Mustache ugh Echo Park exercitation esse. Carles meggings before they sold out commodo kitsch slow-carb. Banh mi et in, church-key 90\'s tattooed readymade deserunt wayfarers. Sustainable keytar Austin, McSweeney\'s American Apparel chia single-origin coffee. Lo-fi 3 wolf moon kitsch Helvetica XOXO ex quinoa laboris.', image: @file_five)

itinerary.events.create!(title: 'Steak Dinner', date: '01/07/2015', location: 'Al\'s Steakhouse', start_time: '19:00', end_time: '22:00', attendees: 'Neal, Roger, Max, Joe, Steve', desc: 'Cornhole veniam shabby chic direct trade literally, seitan enim nostrud distillery heirloom four dollar toast normcore. Laborum fixie yr banjo messenger bag excepteur. Kitsch sapiente whatever, distillery heirloom occaecat slow-carb Godard fugiat Pinterest qui small batch. Aute sartorial yr roof party, post-ironic brunch minim street art irure Helvetica American Apparel cornhole. Viral Pinterest trust fund hella, proident typewriter sapiente readymade forage pour-over you probably haven\'t heard of them placeat consectetur cillum biodiesel. Odd Future fanny pack Tumblr Neutra forage raw denim. Sriracha bicycle rights Kickstarter, Pitchfork cupidatat Blue Bottle cred aute 8-bit hella tousled pickled.', image: @file_six)

puts "Roger Itinerary and Events inserted"
