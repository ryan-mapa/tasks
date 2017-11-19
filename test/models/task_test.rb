# == Schema Information
#
# Table name: tasks
#
#  id         :integer          not null, primary key
#  content    :text             not null
#  parent_id  :integer
#  author_id  :integer          not null
#  completed  :boolean          default(FALSE)
#  children   :integer          default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
