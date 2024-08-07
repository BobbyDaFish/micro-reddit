class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 6 }, uniqueness: true
  validates :password, presence: true, length: { minimum: 8 }

  has_many :posts
  has_many :comments
end
