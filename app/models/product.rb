class Product < ApplicationRecord
    has_many_attached :images
    has_many :line_items, dependent: :destroy
    belongs_to :user
  end
  
  
#   devise :database_authenticatable, :registerable,
#   :recoverable, :rememberable, :validatable, :confirmable, :timeoutable
# after_create :add_order 
# has_one_attached :image
# has_one :address, inverse_of: :user, dependent: :destroy
# accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
# after_create :assign_default_role
# has_many :orders, dependent: :destroy

# def assign_default_role
# self.add_role(:buyer) if self.roles.blank?
# end

# def latest_order
# orders.where(status:0).first || new_order
# end

# private
# def new_order
# orders.create(status:0)
# end