FactoryGirl.define do
  factory :course do
    sequence :name do |n|
      "#{Faker::Lorem.word} #{n}"
    end

    association :subject
  end
end
