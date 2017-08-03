class GamesController < ApplicationController

  def create
    # Creates a new game and assigns it a random image from the category
    game = Game.create(name: params[:gameName])
    category = Category.find(params[:category][:id])
    image = category.images.sample
    image.games << game
    render json: {image: image, game: game}
  end

end
