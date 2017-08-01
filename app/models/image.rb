# == Schema Information
#
# Table name: images
#
#  id          :integer          not null, primary key
#  url         :string
#  answer      :string
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Image < ApplicationRecord
  belongs_to :category
  has_many :guesses
end
