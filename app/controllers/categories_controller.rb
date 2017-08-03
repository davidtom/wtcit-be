class CategoriesController < ApplicationController

  def index
    # returns all category names, with id
    @category = Category.all
    render json: @category
  end

end
