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
class Kudo < ApplicationRecord
  belongs_to :giver, class_name: 'Employee', inverse_of: :given_kudos
  belongs_to :receiver, class_name: 'Employee', inverse_of: :received_kudos

  validates :title, :content, presence: true
end
