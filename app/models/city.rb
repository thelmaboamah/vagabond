class City < ApplicationRecord
	extend FriendlyId
	has_many :entries
	has_many :users, through: :entries

	friendly_id :name, use: :slugged
end
