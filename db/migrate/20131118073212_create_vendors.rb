class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.decimal :phone
      t.text :address
      t.string :city
      t.string :state
      t.string :country
      t.date :date_of_reg

      t.timestamps
    end
  end
end
