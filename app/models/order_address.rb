class OrderAddress
  include ActiveModel::Model
  attr_accessor :postcode, :prefecture_id, :city, :block, :building, :phone, :order_id, :user_id, :item_id, :token

  with_options presence: true do
    validates :postcode, format: { with: /\A[0-9]{3}-[0-9]{4}\z/, message: 'is invalid. Include hyphen(-)' }
    validates :prefecture_id, numericality: { other_than: 0, message: "can't be blank" }
    validates :city
    validates :block
    validates :phone, format: { with: /\A\d{10,11}\z/, message: 'is invalid. Please enter half-width numbers of at least 10 digits and no more than 11 digits'}
    validates :user_id
    validates :item_id
    validates :token
  end

  def save
    order = Order.create(user_id:, item_id:)
    Address.create(postcode:, prefecture_id:, city:, block:, building:, phone:,
                   order_id: order.id)
  end
end
