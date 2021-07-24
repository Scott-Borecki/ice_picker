class Pick < ActiveRecord
  validates :who_goes_first, presence: true
end
