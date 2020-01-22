class Question < ApplicationRecord
  has_many :responses, dependent: :destroy

  validates :author, presence: true
  validates :question, presence: true

  validates_length_of :author, maximum: 100

    before_save(:titleize_question)

    private
        def titleize_question
          self.author = self.author.titleize
        end
end
