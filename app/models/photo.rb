class Photo < ApplicationRecord
    belongs_to :artist, :optional => true
    has_many :comments
    has_many :likes
end
