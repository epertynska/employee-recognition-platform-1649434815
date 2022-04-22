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
FactoryBot.define do
  factory :kudo do
    title { 'Title' }
    content { 'Content' }
    giver { build(:employee) }
    receiver { build(:employee) }
  end
end
