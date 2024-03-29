# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class User < ActiveRecord::Base
  
  attr_accessible :name, :email, :password, :password_confirmation, :lastname, 
  :phone, :zip, :city, :country, :state, :address, :date_of_registration







   
  has_secure_password

  before_save { |user| user.email = email.downcase }

  
  validates :name, presence: true 

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }

  validates :password, presence: true

  validates :password_confirmation, presence: true

   validates :phone, presence: true
 
  before_save :create_remember_token



private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end


end

