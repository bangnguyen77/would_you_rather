require 'rails_helper'

describe 'the add a question process' do
  it 'adds a question' do
    user = FactoryGirl.create(:user)
    visit questions_path
    click_on 'Sign In'
    fill_in 'Email', :with => 'new@gmail.com'
    fill_in 'Password', :with => 'password'
    click_on 'Log in'
    click_on 'New Question'
    fill_in 'Statement', :with => 'Image page'
    fill_in 'either', :with => 'a'
    fill_in 'or', :with => 'b'
    click_on 'Create Question'
    expect(page).to have_content 'Image page'
  end
end
