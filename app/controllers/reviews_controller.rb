class ReviewsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews
    json_response(@reviews)
  end

  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.create!(review_params)
    json_response(@review)
  end

  private

  def review_params
    params.require(:review).permit(
      :author,
      :rating,
      :headline,
      :body,
    )
  end
end
