FactoryGirl.define do
  factory :user do
    email     "yuitosato.w@gmail.com"
    password  Faker::Internet.password(8)
    username  "オバマ"
    team      "ホワイトハウス"
    profile   "大統領です"
    works     "アメリカ政府"
  end
end
