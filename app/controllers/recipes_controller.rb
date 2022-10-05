class RecipesController < ApplicationController
    before_action :authorize

    def index 
        recipes = Recipe.all 
        render json: recipes, status: :ok
    end

    def create 
        recipe = Recipe.create(recipe_params)
        if recipe.valid? 
            render json: recipe, status: :created 
        else
            render json: { error: 'Invalid Data' }, status: :unprocessable_entity 
        end
    end

    private 
    def authorize
        return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
    end

    def recipe_params 
        params.permit(:title, :instructions, :minutes_to_complete)
    end
end
