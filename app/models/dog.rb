class Dog < ApplicationRecord
  has_many_attached :images
  belongs_to :user
  has_many :liking_users, through: :likes, source: :users
  has_many :likes
end
