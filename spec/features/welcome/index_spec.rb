require 'rails_helper'

RSpec.describe '/welcome/index.html.erb' do
  describe 'as a visitor' do
    describe 'when I visit the welcome index page' do
      let(:random_pick) { Pick.create(who_goes_first: 'Smallest street address number') }

      before do
        allow(Pick).to receive(:random).and_return(random_pick)
      end

      it 'shows a button to generate a random pick' do
        welcome_message = 'Welcome to Ice Picker!'

        visit '/'

        expect(page).to have_content(welcome_message)
        expect(page).to have_button('Generate Random Pick')
        expect(current_path).to eq('/')
      end

      describe 'when I click on the generate random pick button' do
        it 'returns a random pick' do
          visit '/'

          click_button 'Generate Random Pick'

          expect(current_path).to eq("/picks/#{random_pick.id}")
          expect(page).to have_content(random_pick.who_goes_first)
          expect(page).to have_button('Generate Random Pick')
        end
      end
    end
  end
end
