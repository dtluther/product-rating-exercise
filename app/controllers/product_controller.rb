class ProductController < ApplicationController
  def index
    @products = Product.all.includes(:reviews)
    sorted_by_num_reviews = @products.sort_by(&:average_rating).reverse
    json_response(sorted_by_num_reviews)
  end

  def show
    json_response(Product.find(params[:id]))
  end
end
