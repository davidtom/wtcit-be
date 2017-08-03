class CategoriesController < ApplicationController

  def index
    # returns all category names, with id
    category = Category.order(:name)
    render json: category
  end

end
