class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.integer :contactnumber
      t.text :complaint

      t.timestamps
    end
  end
end
