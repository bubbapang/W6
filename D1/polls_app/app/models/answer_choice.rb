# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint           not null, primary key
#  body        :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint
#
# Indexes
#
#  index_answer_choices_on_question_id  (question_id)
#
# Foreign Keys
#
#  fk_rails_...  (question_id => questions.id)
#
class AnswerChoice < ApplicationRecord
    validates :body, presence: true
    
    belongs_to :question,
        foreign_key: :question_id,
        class_name: :Question

    has_many :responses,
        foreign_key: :answer_choice_id,
        class_name: :Response,
        dependent: :destroy
    
end
