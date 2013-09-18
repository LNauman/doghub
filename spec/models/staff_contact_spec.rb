require 'spec_helper'

describe StaffContact do
  it {should have_valid(:email).when('hello@aol.com','hello.again@gmail.com')}
  it {should_not have_valid(:email).when(nil,'','foo')}
  it {should have_valid(:subject).when('Best service ever','3 Favorite Things About Doghub')}
  it {should_not have_valid(:subject).when(nil,'')}
  it {should have_valid(:description).when('I want to write to you today to tell you some stuff.','a'*251)}
  it {should_not have_valid(:description).when(nil,'')}
  it {should have_valid(:first_name).when('Lindsay','Ali')}
  it {should_not have_valid(:first_name).when(nil,'')}
  it {should have_valid(:last_name).when('Nauman','Baba')}
  it {should_not have_valid(:last_name).when(nil,'')}
end

describe 'contact' do
  it 'creates a new contact to staff' do
    sample_contact = FactoryGirl.build(:staff_contact)
    expect(sample_contact.contact).to eql(true)
  end
end

