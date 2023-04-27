class User < ApplicationRecord
    has_secure_password
    validates :email, :uniqueness => true, :presence => true
    has_many :photos
    has_many :comments
    has_many :likes
end
