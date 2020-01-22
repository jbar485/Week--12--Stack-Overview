require 'rails_helper'

describe "the add a question process" do
  it "adds a new question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'Author', :with => 'Judah Barton'
    fill_in 'Question', :with => 'How old am I?'
    click_on 'Create Question'
    expect(page).to have_content 'Question successfully added!'
    expect(page).to have_content 'Judah Barton'
  end

  # it "edits a question" do
  #   visit questions_path
  #   click_link 'Create new question'
  #   fill_in 'Author', :with => 'Judah Barton'
  #   fill_in 'Question', :with => 'How old am I?'
  #   click_on 'Create Question'
  #   click_link 'Judah Barton'
  #   click_link 'Edit'
  #   fill_in 'Author', :with => 'Jenkens'
  #   click_on 'Update Question'
  #   expect(page).to have_content 'Question successfully added!'
  #   expect(page).to have_content 'Jenkens'
  # end

  it "gives an error when no author is entered" do
    visit new_question_path
    click_on 'Create Question'
    expect(page).to have_content "Author can't be blank"
  end
end

describe "root page" do
  it "shows root page" do
    visit '/'
    expect(page).to have_content "Create new question"
  end
end

# describe "the update a question process" do
#   it "updates a question" do
#     visit questions_path
#     click_link 'Create new question'
#     fill_in 'Author', :with => 'Judah Barton'
#     fill_in 'Question', :with => 'How old am I?'
#     click_on 'Create Question'
#     expect(page).to have_content 'Question successfully added!'
#     expect(page).to have_content 'Judah Barton'
#   end
# end

describe "show a question" do
  it "shows a question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'Author', :with => 'Judah Barton'
    fill_in 'Question', :with => 'How old am I?'
    click_on 'Create Question'
    click_on 'Judah Barton'
    expect(page).to have_content 'Judah Barton'
  end
end

describe "delete a question" do
  it "deletes a question" do
    visit questions_path
    click_link 'Create new question'
    fill_in 'Author', :with => 'Judah Barton'
    fill_in 'Question', :with => 'How old am I?'
    click_on 'Create Question'
    click_on 'Judah Barton'
    click_on 'Delete'
    expect(page).to not_have_content 'Judah Barton'
  end
end
