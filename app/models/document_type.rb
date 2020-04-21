class DocumentType < ApplicationRecord
  has_many :owners
  
  validates :description, presence: true
end
