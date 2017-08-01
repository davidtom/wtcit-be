# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string
#  image_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  belongs_to :image
  has_many :guesses
  has_many :users, through: :guesses

  
end
