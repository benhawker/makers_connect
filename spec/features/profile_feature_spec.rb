require 'rails_helper'

feature 'User can manage profile page' do
  context 'User signed in and on the profile page' do
    it 'should see their profile' do

      visit '/users/:user_id/profile'

    end

  end



end