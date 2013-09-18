require 'spec_helper'

feature "user contacts doghub staff", %Q{
  As a site visitor
  I want to contact DogHub staff
  So that I can tell them how awesome they are 
} do 
  # Acceptance Criteria:

  # I must specify a valid email address
  # I must specify a subject
  # I must specify a description
  # I must specify a first name
  # I must specify a last name

  scenario 'specifies valid information, contacts staff' do
    visit '/'
    fill_in 'Email', with: 'lindsay@gmail.com'
    fill_in 'Subject', with: 'dogs'
    fill_in 'Description', with: 'they are awesome'
    fill_in 'First name', with: 'Lindsay'
    fill_in 'Last name', with: 'Nauman'
    click_button 'Submit Contact'

    expect(page).to have_content('Your contact has been submitted!')
  end
end
