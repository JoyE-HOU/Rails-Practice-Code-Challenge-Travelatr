class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts
    # Was missing both the "," after through and missing the ":" before posts

    validates :bio, length: { minimum: 30}
end
