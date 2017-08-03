# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  game_id    :integer
#  user_id    :integer
#  text       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord

  belongs_to :game
  belongs_to :user

  validates :text, :game_id, :user_id, presence: true

end
