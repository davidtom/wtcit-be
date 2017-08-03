# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string
#  complete   :boolean          default(FALSE)
#  image_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ApplicationRecord
  belongs_to :image

  has_many :guesses
  has_many :guess_users, through: :guesses, source: :user

  has_many :comments
  has_many :comment_users, through: :comments, source: :user

  validates :image_id, presence: true

  def self.last_incomplete?
    !self.last.complete ? self.last : false
  end


end
