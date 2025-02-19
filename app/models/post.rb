class Post < ApplicationRecord
  validates :title, length: { in: 8..24 }, presence: true
  validates :description, length: { maximum: 1200 }
  validates :user_id, presence: true

  belongs_to :user
  has_many :comments
end
