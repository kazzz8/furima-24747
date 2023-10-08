class Item < ApplicationRecord

  # Validates

  validates :image, presence: true
  validates :category_id, :condition_id, :shipping_fee_payer_id, :prefecture_id, :days_to_ship_id, numericality: { other_than: 1 , message: "Can't be blank"}
  
  # Association
  belongs_to :user
  has_one_attached :image

  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :shipping_fee_payer
  belongs_to :prefecture
  belongs_to :days_to_ship
end
