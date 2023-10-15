FactoryBot.define do
  factory :item do
    name  { Faker::Lorem.sentence }
    description { Faker::Lorem.sentence }
    category_id { rand(2..11) }
    condition_id { rand(2..7) }
    shipping_fee_payer_id { rand(2..3) }
    prefecture_id { rand(2..48) }
    days_to_ship_id { rand(2..4) }
    price { rand(300..9_999_999) }
    # price {Faker::Number.between(from: 5, to: 11)}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/animal171010_01.jpg'), filename: 'animal171010_01.jpg')
    end
  end
end
