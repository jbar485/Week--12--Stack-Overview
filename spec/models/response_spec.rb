require 'rails_helper'

describe Response do
  it { should belong_to(:question) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :answer }
  it { should validate_length_of(:author).is_at_most(100) }
  it { should validate_length_of(:answer).is_at_most(250) }
  it("titleizes the author of a response") do
    question = FactoryBot.create(:question)
    response = FactoryBot.create(:response, :question_id => question.id)
    response.author.should eq 'Ali Amirhamzeh'
  end
end
