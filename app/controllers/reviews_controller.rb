class ReviewsController < ApplicationController
  before_action :set_recipe, only: [:show, :new, :create, :edit]
  before_action :set_review, only: [:show, :edit, :update, :destroy]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.attributes = {
      recipe_id: params[:recipe_id],
      user_id: current_user.id
    }
    if @review.save
      redirect_to @review.recipe, notice: "コメントを投稿しました。"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @review.update(review_params)
      redirect_to @review.recipe, notice: "レビューを更新しました。"
    else
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to @review.recipe, notice: "コメントを削除しました。"
  end

  private

  def review_params
    params.require(:review).permit(:body, :evaluation)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_review
    @review = Review.find(params[:id])
  end
end
