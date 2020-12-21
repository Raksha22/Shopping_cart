class Order < ApplicationRecord
    belongs_to :user
    enum status: [:cart, :payment, :deliver, :shipped, :cancelled]
    has_many :line_items, dependent: :destroy
    before_save :set_total_price
  
    def total_price
      line_items.collect {|line_item| line_item.valid? ? (line_item.product.price*line_item.quantity) : 0}.sum
    end
  
    private
      def set_total_price
        self[:total_price] = total_price
      end
  end
  