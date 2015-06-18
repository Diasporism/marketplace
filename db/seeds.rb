['Ruby', 'Javascript', 'Go', 'HTML', 'CSS'].each do |subject|
  FactoryGirl.create(:subject, name: subject)
end
