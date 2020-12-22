class ReviewsController < ApplicationController
  # may not need, this will show up on product#show
  # def index
  #   @reviews = Review.all
  #   json_response(@reviews)
  # end

  def create
    @review = Review.create!(review_params)
    json_response(@review)
  end

  private

  def review_params
    params.require(:review).permit(
      :author,
      :rating,
      :headline,
      :body,
      :product_id
    )
  end
end
