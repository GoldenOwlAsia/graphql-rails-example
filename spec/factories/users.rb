# == Schema Information
#
# Table name: users
#
#  id              :bigint(8)        not null, primary key
#  name            :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    password "12345678"
    password_confirmation "12345678"
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
