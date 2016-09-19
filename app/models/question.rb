class Question < ActiveRecord::Base
  validates_presence_of :statement

  has_many :answers
end
