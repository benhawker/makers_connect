require 'rails_helper'

feature 'User can manage profile page' do
  context 'User signed in and on the profile page' do
    before do
      sign_up()
    end

    it 'should see all user profiles' do
      expect(page).to have_content("Profiles")
    end

    it "can go to the create profile page" do
      click_link("Create profile")
      expect(page).to have_content("Fill out your profile")
    end

    it "can actually create and submit their profile successfully" do
      create_profile()
      expect(page).to have_content("Profile created successfully")
    end

    it 'can view their own profile' do
      create_profile()
      click_link("My profile")
      expect(page).to have_content("Your profile")
      expect(page).to have_content("Bob")
      expect(page).to have_content("Jones")
      expect(page).to have_content("July 2015")
    end

    it 'can edit their own profile' do
      create_profile()
      click_link("My profile")
      click_link("Edit profile")
      expect(page).to have_content("Edit your profile and save")

      fill_in 'profile[cohort]', with: 'June 2015'
      click_button('Update profile')
      expect(page).to have_content("Profile updated successfully")
    end


end

end
