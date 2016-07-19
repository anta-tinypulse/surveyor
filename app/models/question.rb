class Question < ApplicationRecord
  belongs_to :survey
  validates :title, presence: true
  QUESTION_TYPES = [:short_answer, :multiple_choice, :check_boxes]
  enum type: QUESTION_TYPES
  validates :type, inclusion: {in: types.keys }

  self.inheritance_column = nil
end
