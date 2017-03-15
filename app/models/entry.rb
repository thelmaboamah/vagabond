class Entry < ApplicationRecord
	belongs_to :user
  belongs_to :city

  default_scope -> { order(created_at: :desc) }


  validates :user_id, presence: true
  validates :city_id, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
