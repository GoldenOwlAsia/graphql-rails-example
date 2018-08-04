# == Schema Information
#
# Table name: links
#
#  id          :bigint(8)        not null, primary key
#  url         :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#

class Link < ApplicationRecord
  belongs_to :user
  has_many :votes

  validates :url, presence: true, length: { minimum: 5 }
  validates :description, presence: true, length: { minimum: 5 }
end
