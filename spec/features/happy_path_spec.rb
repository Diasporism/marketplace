require_relative '../rails_helper'

describe 'Happy Paths', js: true do
  context 'when visiting the home page' do
    let(:discipline_names) { [] }

    it 'the displines names are shown' do
      3.times do
        discipline = FactoryGirl.create :discipline
        discipline_names << discipline.name
      end
      visit '/'
      discipline_names.each do |name|
        expect(page).to have_content name
      end
    end
  end
end
