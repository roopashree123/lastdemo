class AddCityToUsers < ActiveRecord::Migration
  def change
    add_column :users, :lastname, :string
    add_column :users, :phone, :decimal
    add_column :users, :zip, :decimal
    add_column :users, :city, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :address, :text
    add_column :users, :date_of_registration, :date
  end
end
