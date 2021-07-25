class PicksController < ApplicationController
  before_action :fetch_current_pick, only: [:show]
  before_action :fetch_random_pick, only: [:show]

  def show
  end

  private

  def fetch_current_pick
    @current_pick = Pick.find(params[:id])
  end

  def fetch_random_pick
    @random_pick = Pick.random
  end
end
