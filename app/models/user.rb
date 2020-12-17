class User < ApplicationRecord
  rolify
  after_create :add_order 
  has_one_attached :image
  has_one :address, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :address, allow_destroy: true, reject_if: :all_blank
  after_create :assign_default_role
  has_many :orders, dependent: :destroy
  validates :phone, presence: true, length: { maximum: 10 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         has_one :address, :autosave => true, dependent: :destroy
         accepts_nested_attributes_for :address, allow_destroy: true

end
