class FarmHasOwner < ApplicationRecord
  belongs_to :farm
  belongs_to :owner

  validates :percentage, presence: true

end
