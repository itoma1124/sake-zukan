FactoryBot.define do
  factory :sake do
    name             { Faker::Games::Pokemon.name }
    category         { Faker::Lorem.sentence }
    total_id         { rand(1..5) }
    taste_id         { rand(1..4) }
    sourness_id      { rand(1..4) }
    easy_id          { rand(1..4) }
    place            { Faker::Lorem.sentence }
    impression       { Faker::Lorem.sentence }
    maker            { Faker::Lorem.sentence }
    area_id          { rand(1..47) }
    text             { Faker::Lorem.sentence }
    user_id          {user.id}
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
