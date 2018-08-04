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

describe User do
  context 'associations in table' do
    it { is_expected.to have_many(:votes) }
    it { is_expected.to have_many(:links) }
  end

  context 'validate' do
    # it { is_expected.to validate_presence_of(:name) }
    # it { is_expected.to validate_presence_of(:email) }
  end
end
