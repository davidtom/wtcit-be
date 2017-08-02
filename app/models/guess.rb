# == Schema Information
#
# Table name: guesses
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  user_id    :integer
#  text       :string
#  correct    :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Guess < ApplicationRecord
  belongs_to :game
  belongs_to :user

  validates :text, presence: true

  before_save :check_guess

  def check_guess
    game = Game.find(self.game_id)
    if
      self.text.downcase == game.image.answer.downcase
      self.correct = true
    else
      self.correct = false
    end
  end

end
