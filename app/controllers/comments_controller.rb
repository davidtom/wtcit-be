class CommentsController < ApplicationController

  def handle_comment
    @comment = Comment.new(comment_params(:game_id, :text))
    @user = User.find_or_create_by(name: params[:user][:name])
    @user.comments << @comment
    @comment.save
    render json: @comment
  end

  private
    def comment_params(*args)
      params.require(:guess).permit(*args)
    end

end