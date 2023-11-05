class Order < ApplicationRecord
  # Associasion
  belongs_to :user
  belongs_to :item
  has_one :address
end
