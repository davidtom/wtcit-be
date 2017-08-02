class CategoriesController < ApplicationController

  def index
    # returns all category names, with id
    @category = Category.all
    render json: @category
  end

  def image
    # returns a random image within the category and associates it with a new
    # game, which is also passed in through params
    game = Game.create(name: params[:game])
    category = Category.find_by(name: params[:category])
    random_image = category.images.sample
    random_image.games << game
    render json: {image: random_image, game: game}
  end

end
