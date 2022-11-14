# frozen_string_literal: false

# This is a child class
class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @list = List.find(params[:list_id])
    @review.list = @list
    passed = -> { redirect_to list_path(@list) }
    failed = -> { @bookmark = Bookmark.new; render %(lists/show), status: :unprocessable_entity }
    @review.save ? passed.call : failed.call
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to list_path(@review.list)
  end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
