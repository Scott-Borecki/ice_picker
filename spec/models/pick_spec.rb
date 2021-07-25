require 'rails_helper'

RSpec.describe Pick do
  describe 'validations' do
    it { should validate_presence_of(:who_goes_first) }
  end

  describe 'class methods' do
    describe '.random' do
      it 'returns a random pick' do
        who_goes_first_collection = [
          'Birthday: Day of month (earliest to latest)',
          'Birthday: Day of month (latest to earliest)',
          'First Name: Last letter (from a to z)',
          'First Name: Last letter (from z to a)'
        ]

        who_goes_first_collection.each_with_index do |who_goes_first|
          Pick.create(who_goes_first: who_goes_first)
        end

        actual = Pick.random

        expect(who_goes_first_collection).to include(actual.who_goes_first)
      end
    end
  end
end
