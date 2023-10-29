class OrderAddress
  include ActiveModel::Model
  attr_accessor :postcode, :prefecture_id, :city, :block, :building, :phone, :order_id, :user_id, :item_id, :token

  with_options presence: true do
    validates :user_id
    validates :token
    validates :postcode, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
  end

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Address.create(postcode: postcode, prefecture_id: prefecture_id, city: city, block: block, building: building, phone: phone, order_id: order.id)
  end
end