class WelcomeController < ApplicationController
  before_action :fetch_random_pick, only: [:index]

  def index
  end

  private

  def fetch_random_pick
    @random_pick = Pick.random
  end
end
