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
  has_many :comments
  has_many :games, through: :comments

  validates :name, presence: true, uniqueness: true

  before_validation :assign_anonymous

  private

    def assign_anonymous
      self.name = "anonymous" if self.name.blank?
      return true
    end

end
