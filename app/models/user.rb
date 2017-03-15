class User < ApplicationRecord
	has_many :entries, dependent: :destroy
	has_many :cities, through: :entries

	before_save { email.downcase! }
	validates :first_name, presence: true, length: {maximum: 50}
	validates :last_name, presence: true, length: {maximum: 50}
	validates :current_city, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	
	has_secure_password
  validates :password, presence: true, length: { minimum: 6 }, allow_nil: true
end
