# == Schema Information
#
# Table name: votes
#
#  id         :bigint(8)        not null, primary key
#  link_id    :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Vote < ApplicationRecord
  belongs_to :link
  belongs_to :user
end
