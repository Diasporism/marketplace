require 'rails_helper'

describe Tag do
  it 'associates a guide with a topic' do
    tag   = FactoryGirl.create :tag
    guide = tag.guide
    topic = tag.topic
    expect(guide.topics).to include topic
    expect(topic.guides).to include guide
  end
end
