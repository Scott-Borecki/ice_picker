require 'rails_helper'

RSpec.describe '/pickers/show.html.erb' do
  describe 'as a visitor' do
    describe 'when I visit the pickers show page' do
      let(:pick) { Pick.create(who_goes_first: 'Birthday: Day of month '\
                                                      '(earliest to latest)') }
      let(:random_pick) { Pick.create(who_goes_first: 'Smallest street address'\
                                                      ' number') }

      before do
        allow(Pick).to receive(:random).and_return(random_pick)

        visit "/picks/#{pick.id}"
      end
      # it shows the show page ... think of a single test for the display
      it 'shows who goes first' do
        expect(page).to have_content('Birthday: Day of month (earliest to '\
                                     'latest)')
      end

      it 'shows a button to generate a random pick' do
        expect(page).to have_button('Generate Random Pick')
      end

      describe 'when I click on the generate random pick button' do
        it 'returns a random pick' do
          click_button 'Generate Random Pick'

          expect(current_path).to eq("/picks/#{random_pick.id}")
          expect(page).to have_content(random_pick.who_goes_first)
          expect(page).to have_button('Generate Random Pick')
        end
      end
    end
  end
end
