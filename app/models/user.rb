require 'inss_calculator'

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :calculate_inss_values
  before_update :calculate_inss_values

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :address, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true
  has_many :contacts, dependent: :destroy
  accepts_nested_attributes_for :contacts, allow_destroy: true


  def with_address
    build_address if address.nil?
    self
  end

  private

  def calculate_inss_values
    self.total_inss_discount, self.salary_band = InssCalculator.new(self.salary).get_inss_values
  end


end
