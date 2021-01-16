# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.first_or_create(email: "test@test.com", password:"password")
rory = user.dogs.find_or_create_by(name: "Rory", age: "5yrs", sex: "female")
loki = user.dogs.find_or_create_by(name: "Loki", age: "2yrs", sex: "male")

service_request1 = rory.service_requests.find_or_create_by(user_id: user.id, service_type: "grooming", pick_up_location: "Petco 123 N Main st Buffalo,Ny 12234", pick_up_time: "10am on January 16, 2021")