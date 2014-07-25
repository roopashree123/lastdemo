class Product < ActiveRecord::Base
  attr_accessible :brief_description, 
				  :category_name, 
				  :description, 
				  :discounts, 
				  :list_price, 
				  :offer_date,
				  :product_name, 
				  :product_price,
				  :quantity, 
				  :user_image

validates :brief_description,  presence: true
validates :category_name,  presence: true
validates :description,  presence: true
validates :discounts,  presence: true
validates :list_price,  presence: true
validates :offer_date,  presence: true
validates :product_name,  presence: true
validates :product_price,  presence: true
validates :quantity,  presence: true
validates :user_image,  presence: true              
end
