class RecipesController < ApplicationController
  def new       # レシピの新規投稿
    @recipe = Recipe.new
  end
end