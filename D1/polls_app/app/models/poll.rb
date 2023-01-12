# == Schema Information
#
# Table name: polls
#
#  id         :bigint           not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_polls_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Poll < ApplicationRecord
    validates :title, presence: true,  uniqueness: true

    belongs_to :author,
        foreign_key: :user_id,
        class_name: :User

    has_many :questions,
        foreign_key: :poll_id,
        class_name: :Questions,
        dependent: :destroy
end
