# Migration
class AddDetailsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :cpf, :string
    add_column :users, :birth_date, :date
  end
end
