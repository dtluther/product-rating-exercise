class Review < ApplicationRecord
  validates :author, :rating, :headline, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: 1..5 }
  validates :headline, length: { maximum: 120 }

  belongs_to :product

  default_scope { order(created_at: :desc, rating: :desc) }
end
