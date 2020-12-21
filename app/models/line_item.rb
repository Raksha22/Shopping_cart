class LineItem < ApplicationRecord
    belongs_to :user
    belongs_to :product
    belongs_to :order
    before_save :set_total_price
  
    private
      def set_total_price
        self.price = product.price*quantity
      end
  end