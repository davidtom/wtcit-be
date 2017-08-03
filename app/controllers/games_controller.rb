class GamesController < ApplicationController

  def create
    # Creates a new game and assigns it a random image from the category
    game = Game.create(name: params[:gameName])
    category = Category.find(params[:category][:id])
    image = category.images.sample
    image.games << game
    render json: {image: image, game: game}
  end

  def current
    # get all categories from database
    category = Category.order(:name)
    # check if last game is incomplete; if so return all necessary game data
    if Game.last_incomplete?
      game = Game.last
      image = game.image
      guess_users = game.guess_users
      comment_users = game.comment_users
      guesses = game.guesses
      comments = game.comments
    end
    render json: {
      category: category,
      game: game,
      image: image,
      guess_users: guess_users,
      comment_users: comment_users,
      guesses: guesses,
      comments: comments
    }
  end

end
