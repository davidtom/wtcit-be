class GuessesController < ApplicationController

  def create
    game = Game.find(params[:game][:id])
    userName = anonymous_user?(params[:userName])
    user = User.find_or_create_by(name: userName)
    guess = Guess.create(game_id: game.id, user_id: user.id, text: guess_text)
    user.guesses << guess
    game.update(complete: guess.correct)
    render json: { guess: guess, user: user, game: game }
  end

  private
    def guess_text
      params.require(:guessText)
    end

end
