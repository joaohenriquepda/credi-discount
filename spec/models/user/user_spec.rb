require 'rails_helper'

RSpec.describe User, type: :model do

    before(:each) do
    password = Faker::Internet.password
    @user = User.new({name: Faker::Name.name,
                email: Faker::Internet.email,    
                cpf: Faker::IDNumber.brazilian_citizen_number,
                birth_date:Faker::Date.birthday(min_age: 18, max_age: 65),
                password:password,
                password_confirmation:password, 
                salary:5000,
                total_inss_discount:"",
                salary_band:""
                })
    end


    it "inss discount calculation" do
        @user.salary = 3000
        @user.save()
        expect(@user.total_inss_discount).to eq(281.63)
    end

    it "inss salary band calculation" do
        @user.salary = 3000
        @user.save()
        expect(@user.salary_band).to eq(3)
    end

 
end