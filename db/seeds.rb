ruby_topic       = FactoryGirl.create(:topic, name: 'Ruby')
javascript_topic = FactoryGirl.create(:topic, name: 'Javascript')
painting_topic   = FactoryGirl.create(:topic, name: 'Painting')
climbing_topic   = FactoryGirl.create(:topic, name: 'Rock Climbing')

ruby_guides = [
    FactoryGirl.create(:guide, title: 'Setting up your dev environment'),
    FactoryGirl.create(:guide, title: 'Basic data types'),
    FactoryGirl.create(:guide, title: 'Using classes to create objects'),
    FactoryGirl.create(:guide, title: 'Using inheritence to DRY up your code')
]

javascript_guides = [
    FactoryGirl.create(:guide, title: 'The basics of Prototypes'),
    FactoryGirl.create(:guide, title: 'Closures and headaches'),
    FactoryGirl.create(:guide, title: 'How hoisting affects your code')
]

painting_guides = [
    FactoryGirl.create(:guide, title: 'The basics of color theory'),
    FactoryGirl.create(:guide, title: 'Framing for dramatic effect')
]

climbing_guides = [
    FactoryGirl.create(:guide, title: 'Safety while belaying'),
    FactoryGirl.create(:guide, title: 'Choosing the right shoes'),
    FactoryGirl.create(:guide, title: 'Lead climbing explained')
]

ruby_guides.each       { |guide| FactoryGirl.create(:tag, guide: guide, topic: ruby_topic) }
javascript_guides.each { |guide| FactoryGirl.create(:tag, guide: guide, topic: javascript_topic) }
painting_guides.each   { |guide| FactoryGirl.create(:tag, guide: guide, topic: painting_topic) }
climbing_guides.each   { |guide| FactoryGirl.create(:tag, guide: guide, topic: climbing_topic) }
