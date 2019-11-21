class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end
  
  def new
    @ingredient = Ingredient.new
  end

  def create
    ingredient = Ingredient.create(ingredient_params)
    redirect_to ingredient_path(ingredient)
  end

  def show
  end

  private

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
