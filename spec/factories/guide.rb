FactoryGirl.define do
  factory :guide do
    title 'Setting Up Your Ruby Dev Environment'
    body  Faker::Lorem.paragraphs.join(' ')
  end
end
