class Pick < ApplicationRecord
  validates :who_goes_first, presence: true
end
