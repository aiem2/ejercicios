class Tag < ApplicationRecord
    # has_and_belongs_to_many :posts
    has_many :post_tags
    has_many :posts, through: :post_tags, dependent: :destroy
end
