class Item < ApplicationRecord

  # Validates

  
  # Association
  belongs_to :user
  has_one_attached :image
end
