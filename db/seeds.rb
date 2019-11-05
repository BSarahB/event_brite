require 'faker'


2.times do |number|             
        User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Quote.famous_last_words, email: "Sarah#{number}@yopmail.com", encrypted_password:"password")
end
puts "2 utilisateurs crees"


2.times do  |index|    
       Event.create!(title: "Event#{index}", description: Faker::ChuckNorris.fact, admin: User.all.sample, location: Faker::Address.full_address, price: rand(1..10)*5, duration: rand(1..10)*5, start_date: Faker::Date.forward(days: 100))
end
puts "2 evenements crees"



