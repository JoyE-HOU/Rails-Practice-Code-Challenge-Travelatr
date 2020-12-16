class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts
    # Was missing both the "," after through and missing the ":" before posts
end
