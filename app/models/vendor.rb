class Vendor < ActiveRecord::Base
  attr_accessible :address, :city, :country, :date_of_reg, :email, :first_name, :last_name, :phone, :state, :password, :password_confirmation



 has_secure_password
   before_save :create_remember_token

  before_save { |user| user.email = email.downcase }

validates :first_name,  presence: true, length: { maximum: 20 }
validates :last_name,  presence: true, length: { maximum: 20 }
validates :phone,  presence: true, length: { maximum: 15 }
validates :password, presence: true, length: { minimum: 6 }
validates :password_confirmation, presence: true
  

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
   before_save { |user| user.email = email.downcase }

   private

    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end




end
