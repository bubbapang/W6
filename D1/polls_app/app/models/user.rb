# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :authored_polls,
        foreign_key: :user_id,
        class_name: :Poll,
        dependent: :destroy
        
    has_many :responses,
        foreign_key: :user_id,
        class_name: :Response,
        dependent: :destroy
        
end
