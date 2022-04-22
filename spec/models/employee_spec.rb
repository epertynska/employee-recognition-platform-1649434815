# == Schema Information
#
# Table name: employees
#
#  id                     :bigint           not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe Employee, type: :model do
  context 'when validation is successful' do
    it 'returns true' do
      expect(build(:employee)).to be_valid
    end
  end

  context 'when validation is unsuccessful' do
    it 'is not valid without a email' do
      expect(build(:employee, email: '')).not_to be_valid
    end

    it 'is not valid without a password' do
      expect(build(:employee, password: '')).not_to be_valid
    end
  end
end
