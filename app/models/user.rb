class User < ApplicationRecord
  validate :username, presence: true, length: { minimum: 6 }, uniqueness: true
  validate :password, presence: true, length: { minmum: 8 }

  has_many :posts, :comments
end
