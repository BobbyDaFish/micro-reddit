class Post < ApplicationRecord
  validate :title, length: { minimum: 8, maximum: 24 }, presence: true
  validate :description, length: { maximum: 1200 }

  belongs_to :users
  has_many :comments
end
