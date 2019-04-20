class ReviewsController < ApplicationController

  def create
    raise "Yay it's working!"
    @product = Product.find params[:id]
    @review = @product.reviews
  end

end
