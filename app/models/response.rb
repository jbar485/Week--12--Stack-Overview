class Response < ApplicationRecord
  belongs_to :question

  validates :author, presence: true
  validates :answer, presence: true

  validates_length_of :author, maximum: 100
  validates_length_of :answer, maximum: 250

  before_save(:titleize_response)

  private
  def titleize_response
    self.author = self.author.titleize
  end
end
