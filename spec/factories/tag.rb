FactoryGirl.define do
  factory :tag do
    association :guide
    association :topic
  end
end
