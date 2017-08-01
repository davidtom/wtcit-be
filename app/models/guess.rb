# == Schema Information
#
# Table name: guesses
#
#  id         :integer          not null, primary key
#  image_id   :integer
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
end