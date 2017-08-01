# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
  has_many :guesses
  has_many :games, through: :guesses

  validates :name, presence: true, uniqueness: true
end