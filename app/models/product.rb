class Product < ApplicationRecord
    has_many :line_items
    has_many :assignments
    has_one_attached :image
    accepts_nested_attributes_for :assignments
    has_many :colors, through: :assignments
end
