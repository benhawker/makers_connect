require 'rails_helper'

feature 'User can manage profile page' do
  context 'User signed in and on the profile page' do
    before do
      visit '/'
      click_link('Sign up')
      fill_in 'Email', with: 'test@test.com'
      fill_in 'Password', with: 'testtest'
      fill_in 'Password confirmation', with: 'testtest'
      click_button('Sign up')
    end

    it 'should see their profile' do
      expect(page).to have_content("Profiles")
    end

  end



end
