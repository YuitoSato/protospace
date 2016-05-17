FactoryGirl.define do
  factory :proto, class: Proto do
    title        { Faker::Lorem.word }
    catch_copy   { Faker::Lorem.word }
    concept      { Faker::Lorem.sentence }

    after(:build) do |proto|
      proto.images << build(:main_image)
    end

    after(:build) do |proto|
      proto.images << build(:sub1_image)
    end

    after(:build) do |proto|
      proto.images << build(:sub2_image)
    end
  end
end
