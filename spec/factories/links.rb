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

FactoryBot.define do
  factory :link do
    url { Faker::Internet.url }
    description { Faker::Lorem.sentence }
    user { create(:user) }
    after :create do |user|
      # blob = Avatarly.generate_avatar(user.email, size: 150)
      # path = File.join(Rails.root, '/tmp/avatar.png')
      # File.open(path, 'wb') do |f|
      #   f.write blob
      # end
      # user.remote_avatar_url = path
      # user.save
    end
  end
end
