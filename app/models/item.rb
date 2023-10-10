class Item < ApplicationRecord

  # Validates
  validates :name, :description, :price, :image, presence: true
  validates :category_id, :condition_id, :shipping_fee_payer_id, :prefecture_id, :days_to_ship_id, numericality: { other_than: 1 , message: "Can't be blank"}
  validates :price, numericality: { in: 300..9999999 }

  # Association
  belongs_to :user
  has_one_attached :image

  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category, :condition, :shipping_fee_payer, :prefecture, :days_to_ship
end
