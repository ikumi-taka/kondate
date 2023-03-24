class RecipesController < ApplicationController
  def index
    @recipe = Recipe.all
  end

  def new       # レシピの新規投稿
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def recipe_params
      params.require(:recipe).permit(:recipe_name, :genre, :food, :quantity, :content)
    end
end