class GuessesController < ApplicationController



  def validate
    @guess = Guess.new(guess_params(:game_id, :text))
    @user = User.find_or_create_by(name: params[:user][:name])
    @user.guesses << @guess
    render json: @guess
  end

  private
    def guess_params(*args)
      params.require(:guess).permit(*args)
    end

end
