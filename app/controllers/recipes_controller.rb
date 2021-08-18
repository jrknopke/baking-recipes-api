class RecipesController < ApplicationController

    def index
        recipes = Recipe.all
        render json: recipes.to_json(:include => :ingredients)
    end


end
