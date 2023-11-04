class Item < ApplicationRecord
  # Validates
  validates :name, :description, :price, :image, presence: true
  validates :category_id, :condition_id, :shipping_fee_payer_id, :prefecture_id, :days_to_ship_id,
            numericality: { other_than: 1, message: "Can't be blank" }
  validates :price, numericality: { only_integer: true, in: 300..9_999_999 }

  # Association
  belongs_to :user
  has_one_attached :image
  has_one :order

  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_fee_payer
  belongs_to :prefecture
  belongs_to :days_to_ship
end
