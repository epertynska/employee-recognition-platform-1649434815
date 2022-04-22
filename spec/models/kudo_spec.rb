# == Schema Information
#
# Table name: kudos
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  content     :text             not null
#  giver_id    :bigint           not null
#  receiver_id :bigint           not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Kudo, type: :model do
  context 'when it is valid' do
    it 'returns true' do
      expect(build(:kudo)).to be_valid
    end
  end

  context 'when it is not valid -' do
    it 'is not valid without a title' do
      expect(build(:kudo, title: '')).not_to be_valid
    end

    it 'is not valid without a content' do
      expect(build(:kudo, content: '')).not_to be_valid
    end
  end
end
