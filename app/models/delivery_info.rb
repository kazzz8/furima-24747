class DeliveryInfo < ApplicationRecord

  # アソシエーション
  belongs_to :order
end
