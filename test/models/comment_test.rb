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

require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end