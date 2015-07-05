FactoryGirl.define do
  factory :topic do
    name 'Ruby'
    association :discipline
  end
end
