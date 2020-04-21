class Owner < ApplicationRecord
  belongs_to :document_type

  validates :fistName, presence: true
  validates :lastName, presence: true
  validates :documentNumber, presence: true
end
