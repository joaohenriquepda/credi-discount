require "test_helper"
require 'faker'

class UserTest < ActiveSupport::TestCase
  def setup
    @password = Faker::Internet.password
  end

  test "inss discount calculation" do
    user = User.create({ name: Faker::Name.name,
                         email: Faker::Internet.email,
                         cpf: Faker::IDNumber.brazilian_citizen_number,
                         birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
                         password: @password,
                         password_confirmation: @password,
                         salary: 3000,
                         total_inss_discount: "",
                         salary_band: "" })

    assert_equal 281.63, user.total_inss_discount
  end

  test "inss salary band calculation" do
    user = User.create({ name: Faker::Name.name,
                         email: Faker::Internet.email,
                         cpf: Faker::IDNumber.brazilian_citizen_number,
                         birth_date: Faker::Date.birthday(min_age: 18, max_age: 65),
                         password: @password,
                         password_confirmation: @password,
                         salary: 3000,
                         total_inss_discount: "",
                         salary_band: "" })

    assert_equal 3, user.salary_band
  end
end
