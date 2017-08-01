class CategoriesController < ApplicationController

  def random_image
    @category = Category.find_by(name: params[:category])
    random_image = @category.images.sample
    render json: random_image
  end

end
