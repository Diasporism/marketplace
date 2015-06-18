FactoryGirl.define do
  factory :subject do
    sequence :name do |n|
      "#{Faker::Lorem.word} #{n}"
    end
  end
end
