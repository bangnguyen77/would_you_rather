class Answer < ActiveRecord::Base
  validates_presence_of :statement, :question_id

  belongs_to :question
end
