class Question < ActiveRecord::Base
  validates_presence_of :statement, :answer1, :answer2

  has_many :answers
  belongs_to :user
end
