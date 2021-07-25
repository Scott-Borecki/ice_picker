class Pick < ApplicationRecord
  validates :who_goes_first, presence: true

  def self.random
    all.sample
  end
end
