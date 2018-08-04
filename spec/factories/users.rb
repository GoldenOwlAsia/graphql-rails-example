# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  name                   :string           default(""), not null
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
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
