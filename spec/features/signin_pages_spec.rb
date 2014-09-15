require 'rails_helper'

describe "the signin process" do
  it "signs a user in who uses the right password" do
    visit '/users/sign_in'
    user = User.create(:email => 'user@example.com', :password => '12345678', :full_name => 'Dylan')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => '12345678'
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end

  it "gives an error for an incorrect password" do
    visit '/users/sign_in'
    user = User.create(:email => 'user@example.com', :password => '12345678', :full_name => 'Dylan')
    fill_in 'Email', :with => 'user@example.com'
    fill_in 'Password', :with => '1234567'
    click_button 'Log in'
    expect(page).to have_content 'Invalid email or password'
  end
end
