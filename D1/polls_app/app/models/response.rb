# == Schema Information
#
# Table name: responses
#
#  id               :bigint           not null, primary key
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  answer_choice_id :bigint
#  user_id          :bigint
#
# Indexes
#
#  index_responses_on_answer_choice_id  (answer_choice_id)
#  index_responses_on_user_id           (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (answer_choice_id => answer_choices.id)
#  fk_rails_...  (user_id => users.id)
#
class Response < ApplicationRecord

    belongs_to :answer_choice,
        foreign_key: :answer_choice_id,
        class_name: :AnswerChoice

    belongs_to :respondent,
        foreign_key: :user_id,
        class_name: :User
        
end
