require 'rails_helper'

feature 'User can manage employment experiences' do

  context 'User signed in and on the profile page' do
    before do
      sign_up
    end

    it "can add an employment experience" do
      click_link("My work history")
      click_link("Add a work history")
      expect(page).to have_content("New work history")
      fill_in 'Company name', with: "Thoughbot"
      fill_in  'City', with: "London"
      fill_in 'Country', with: "UK"
      select '2014/06/06', from: 'Start date'
      select '2014/06/08', from: 'End date'
      click_button "Save"
      expect(page).to have_content("Work history saved successfully")
    end


  end


end