require 'faker'


#emprunte
#2.times do
  #first_name = Faker::Name.first_name
  #last_name = Faker::Name.last_name
  #email = first_name.gsub(' ', '_')+'.'+last_name.gsub(' ', '_')+'@yopmail.com'
  #User.create(first_name: first_name, last_name: last_name, email: email)
#end
2.times do |number|             
       # User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: "Sarah#{number}@yopmail.com", encrypted_password:"password")
end
puts "2 utilisateurs crees"


2.times do     
      # Event.create!(title: "Event#{index}", description: Faker::ChuckNorris.fact, admin: User.all.sample, location: Faker::Address.full_address, price: rand(1..10)*5, duration: rand(1..10)*5, start_date: Faker::Date.forward(days: 100))
#end
#puts "2 evenements crees"
  Event.create(start_date: Time.now + 3600*rand(1..100), duration: rand(1..12)*5 , title: "Title test", price: rand(15..900), location: Faker::Address.city, admin: User.all.sample, description: Faker::Lorem.paragraph(sentence_count: 8) )
end
puts "2events crees"
puts "BDD cree"
