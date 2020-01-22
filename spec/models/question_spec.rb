require 'rails_helper'

describe Question do
  it { should have_many(:responses) }
  it { should validate_presence_of :author }
  it { should validate_presence_of :question }
  it { should validate_length_of(:author).is_at_most(100) }
  it("titleizes the author of an question") do
    question = FactoryBot.create(:question)
    question.author.should eq 'Judah Barton'
  end
end
