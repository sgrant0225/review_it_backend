class Api::V1::ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :update, :destroy]

  # GET /reviews
  def index
    reviews = Review.all

    render json: ReviewSerializer.new(reviews)
  end

  # GET /reviews/1
  def show
    review = Review.find(params[:id])
    render json: ReviewSerializer.new(review)
  end

  # POST /reviews
  def create
    review = Review.new(review_params)
    #byebug
    if review.save
      render json: ReviewSerializer.new(review), status: :accepted
    else
      render json: {errors: review.errors.full_messages}, status: 422
    end
  end

  # PATCH/PUT /reviews/1
  def update
    if review.update(review_params)
      render json: review
    else
      render json: review.errors.full_messages, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  def destroy
    review = Review.find(params[:id])
    if review.destroy
      render json: {id: review.id}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      review = Review.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def review_params
      params.require(:review).permit(:first_name, :last_name, :product_name, :image_url, :location, :feedback, :stars, :category_id)
    end
end
