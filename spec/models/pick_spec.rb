require 'rails_helper'

RSpec.describe Pick do
  describe 'validations' do
    it { should validate_presence_of(:who_goes_first) }
  end
end
