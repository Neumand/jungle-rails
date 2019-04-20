class ReviewsController < ApplicationController

  def create
    description = params[:review][:description]
    rating = params[:review][:rating].to_i
    product_id = params[:product_id]
    review = Review.new({
      product_id: product_id,
      user_id: current_user.id,
      description: description,
      rating: rating,
    })

    if review.save
      review.save
      redirect_to :back
    else
      redirect_to :back
    end
  end

end
