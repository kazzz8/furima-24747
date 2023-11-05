FactoryBot.define do
  factory :order_address do
    postcode { '123-4567' }
    prefecture_id { rand(2..48) }
    city { '船橋市' }
    block { '1-1' }
    building { 'コーポ船橋' }
    phone { '07012345678' }
    token { 'tok_abcdefghijk00000000000000000' }
  end
end
