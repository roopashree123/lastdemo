class Contact < ActiveRecord::Base
  attr_accessible :complaint, :contactnumber, :email, :name
  validates :name, presence:true
	validates :email, presence:true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validates :email, presence: true, format: { with: VALID_EMAIL_REGEX },
            uniqueness:  true
	validates :complaint, presence:true
end
