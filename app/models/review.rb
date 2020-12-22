class Review < ApplicationRecord
  validates :author, :rating, :headline, presence: true
  validates_numericality_of :rating, in: 1..5

  belongs_to :product
end
