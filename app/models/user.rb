class User < ApplicationRecord
    has_many :user_pets 
    has_many :pets, through: :user_pets
    has_many :likes 
    has_many :posts, through: :likes 
    has_many :comments 
    has_many :posts, through: :comments
end
