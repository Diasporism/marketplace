['Ruby', 'Javascript', 'Go', 'HTML', 'CSS'].each do |subject|
  subj = FactoryGirl.create(:subject, name: subject)
  8.times do
    FactoryGirl.create(:course, subject: subj)
  end
end
