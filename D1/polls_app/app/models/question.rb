# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  poll_id    :bigint
#
# Indexes
#
#  index_questions_on_poll_id  (poll_id)
#
# Foreign Keys
#
#  fk_rails_...  (poll_id => polls.id)
#
class Question < ApplicationRecord
    validates :body, presence: true

    belongs_to :poll,
        foreign_key: :poll_id,
        class_name: :Poll

    has_many :answer_choices,
        foreign_key: :question_id,
        class_name: :AnswerChoice,
        dependent: :destroy
end
