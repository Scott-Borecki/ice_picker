class Pick < ApplicationRecord
  validates :who_goes_first, presence: true

  def self.random
    all.sample.who_goes_first
  end
end
