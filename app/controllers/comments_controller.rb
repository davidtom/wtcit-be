class CommentsController < ApplicationController

  def create
    game = Game.find(params[:game][:id])
    user = User.find_or_create_by(name: params[:userName])
    comment = Comment.create(game_id: game.id, user_id: user.id, text: params[:commentText])
    user.comments << comment
    render json: { comment: comment, user: user, game: game }
  end

end
