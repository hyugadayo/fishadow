FactoryBot.define do
  factory :user do
    nickname { Faker::Name.initials(number: 2) }
    email { Faker::Internet.free_email }
    password { Faker::Lorem.characters(number: 10, min_alpha: 4, min_numeric: 1) }
    password_confirmation { password }
    introduce {'自己紹介'}
    association :prefecture
  end
end
