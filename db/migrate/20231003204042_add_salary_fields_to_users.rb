# Migration
class AddSalaryFieldsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :salary, :float
    add_column :users, :total_inss_discount, :float
    add_column :users, :salary_band, :integer
  end
end
