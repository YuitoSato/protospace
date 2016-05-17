FactoryGirl.define do
  factory :image, class: Image do
    image   { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec/factories/img/サイゼカード.png')) }

    trait :main do
      status  :main
    end

    trait :sub1 do
      status  :sub1
    end

    trait :sub2 do
      status  :sub2
    end

    factory :main_image, traits: [:main]
    factory :sub1_image, traits: [:sub1]
    factory :sub2_image, traits: [:sub2]
  end
end
