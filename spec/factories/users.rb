FactoryBot.define do
  factory :user do
    gimei = Gimei.name
    nickname              { gimei.first.romaji }
    email                 { Faker::Internet.email }
    password              { '1a' + Faker::Internet.password(min_length: 6) } # 1aを付与することで必ず、英数字混合になる
    password_confirmation { password }
    last_name             { gimei.last.kanji }
    first_name            { gimei.first.kanji }
    last_name_kana        { gimei.last.katakana }
    first_name_kana       { gimei.first.katakana }
    birthday              { Faker::Date.birthday(min_age: 18, max_age: 90) }
  end
end
