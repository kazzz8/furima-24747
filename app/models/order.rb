class Order < ApplicationRecord


  attr_accessor :token

  # アソシエーション
  belongs_to :user
  belongs_to :item
  has_one :address
end
