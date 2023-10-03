require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.create(
    name: "João Henrique", 
    cpf:"1111111", 
    birth_date:"1990-10-10", 
    email:"joaohenrique.p.almeida@gmail.com",
    password:"123456",
    password_confirmation:"123456")

Address.create(user_id: user.id,street:"Quadra 302", number:"02", district:"", 
    city:"Santa Maria", state:"Distrito Federal", zip_code:"72502506")
   
Contact.create({name: "Marcos", phone:"(61) 90001-9352", contact_type:1, user_id: user.id})   
Contact.create({name: "Maria", phone:"(61) 9901-3268", contact_type:1, user_id: user.id})         

15.times do 
    password = Faker::Internet.password
    user =  User.create({name: Faker::Name.name,
                email: Faker::Internet.email,    
                cpf: Faker::IDNumber.brazilian_citizen_number,
                birth_date:Faker::Date.birthday(min_age: 18, max_age: 65),
                password:password,
                password_confirmation:password})

    Address.create(
            user_id: user.id, 
            street:Faker::Address.street_name, 
            number: Faker::Address.building_number, 
            district:Faker::Address.state_abbr, 
            city: Faker::Address.city, 
            state: Faker::Address.state, 
            zip_code: Faker::Address.zip_code
        )    
                
    rand(2..5).times do
        Contact.create(
            name:Faker::Name.name, 
            phone:Faker::PhoneNumber.cell_phone, 
            contact_type:rand(0..1),
            user_id: user.id)   
    end
end

  

    
