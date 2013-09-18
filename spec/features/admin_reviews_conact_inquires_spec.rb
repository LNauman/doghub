require 'spec_helper'

feature 'admin reviews inquires', %Q{
  As an admin
  I want to review contact inquiries
  So that I can respond or take action 
} do 
  # Acceptance Criteria:
  # I can see a list of all contact inquiries

  scenario 'clicks show, reviews all inquires' do
    lindsay = FactoryGirl.create(:staff_contact)

    visit '/staff_contacts'

    expect(page).to have_content(lindsay.first_name)
    expect(page).to have_content(lindsay.last_name)
    expect(page).to have_content(lindsay.email)


  end

end
