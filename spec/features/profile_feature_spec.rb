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

    it 'should see all user profiles' do
      expect(page).to have_content("Profiles")
    end

    it 'can view their own profile' do
      click_link("My profile")
      expect(page).to have_content("Your profile")
    end

    it 'can edit their own profile' do
      click_link("My profile")
      click_link("Edit profile")
      expect(page).to have_content("Edit your profile and save")
    end

    it "can go to the create profile page" do
      click_link("Create profile")
      expect(page).to have_content("Fill out your profile")
    end

    it "can actually create and submit their profile successfully" do
      click_link("Create profile")
      fill_in 'profile[first_name]', with: 'bob'
      fill_in 'profile[last_name]', with: 'jones'
      fill_in 'profile[cohort]', with: 'July 2015'
      attach_file 'profile[avatar]', 'spec/fixtures/images/donald.png'
      click_button('Save profile')
      expect(page).to have_content("Profile created successfully")
    end

end

end
