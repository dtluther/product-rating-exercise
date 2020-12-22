class Product < ApplicationRecord
  has_many :reviews

  def average_rating
    if reviews.length > 0
      reviews.average(:rating)
    else
      0
    end
  end
end

