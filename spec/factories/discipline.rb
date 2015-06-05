FactoryGirl.define do
  factory :discipline do
    sequence :name do |n|
      "#{Faker::Lorem.word} #{n}"
    end
  end
end
