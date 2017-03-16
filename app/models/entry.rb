class Entry < ApplicationRecord
	belongs_to :user
  belongs_to :city

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "150x150#" }, default_url: 'http://greentreesarborcareinc.com/wp-content/uploads/2014/01/image-placeholder.jpg'
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  default_scope -> { order(created_at: :desc) }

  validates :user_id, presence: true
  validates :city_id, presence: true
  validates :title, presence: true
  validates :body, presence: true
end
