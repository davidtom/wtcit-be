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
    # return all data from the most recent game (either complete or in progress)
      game = Game.last
      image = game.image
      guesses = game.guesses
      guess_users = game.guess_users
      # send last 50 comments made, regardless of which game they were made in
      comments = Comment.all.last(50)
      comment_users = User.where(id: comments.pluck(:user_id))
      # old code for reference:
      # comments = game.comments
      # comment_users = game.comment_users

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
