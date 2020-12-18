class Product < ApplicationRecord
    has_many :line_items
    has_one_attached :image

end
