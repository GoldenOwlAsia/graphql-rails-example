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

describe Link do
  context 'associations in table' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:votes) }
  end

  context 'validate' do
    it { is_expected.to validate_presence_of(:url) }
    it { is_expected.to validate_presence_of(:description) }
  end
end
