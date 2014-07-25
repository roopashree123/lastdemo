class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category_name
      t.string :product_name
      t.decimal :product_price
      t.decimal :list_price
      t.string :user_image
      t.decimal :quantity
      t.string :description
      t.text :brief_description
      t.date :offer_date
      t.decimal :discounts

      t.timestamps
    end
  end
end
