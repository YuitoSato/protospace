FactoryGirl.define do
  factory :user, class: User do
    password  = Faker::Internet.password(8)
    email     { Faker::Internet.email }
    username  { Faker::Lorem.name }
    team      { Faker::Lorem.word }
    profile   { Faker::Lorem.sentence }
    works     { Faker::Lorem.word }
    password  password
    password_confirmation  password
  end
end
