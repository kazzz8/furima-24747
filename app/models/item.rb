class Item < ApplicationRecord

  # Validates

  validates :image, presence: true
  validates :genre_id, numericality: { other_then: 1 , message: "Can't be blank"}
  
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
