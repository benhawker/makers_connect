def sign_up()
  visit '/'
  click_link('Sign up')
  fill_in 'Email', with: 'test@test.com'
  fill_in 'Password', with: 'testtest'
  fill_in 'Password confirmation', with: 'testtest'
  click_button('Sign up')
end

def sign_up_user_2()
  visit '/'
  click_link('Sign up')
  fill_in 'Email', with: 'bob@test.com'
  fill_in 'Password', with: 'testtest'
  fill_in 'Password confirmation', with: 'testtest'
  click_button('Sign up')
end

def create_profile()
  click_link("Create profile")
  fill_in 'profile[first_name]', with: 'Bob'
  fill_in 'profile[last_name]', with: 'Jones'
  fill_in 'profile[cohort]', with: 'July 2015'
  attach_file 'profile[avatar]', 'spec/fixtures/images/donald.png'
  click_button('Save profile')
end

def create_profile_2()
  click_link("Create profile")
  fill_in 'profile[first_name]', with: 'Steve'
  fill_in 'profile[last_name]', with: 'Smith'
  fill_in 'profile[cohort]', with: 'August 2015'
  attach_file 'profile[avatar]', 'spec/fixtures/images/donald.png'
  click_button('Save profile')
end

def sign_out
  click_link("Sign out")
end
