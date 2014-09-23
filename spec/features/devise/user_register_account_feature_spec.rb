require 'rails_helper'

describe 'User can register account' do
  it 'allows user to register account' do
    visit root_path

    click_on 'Sign Up'

    expect(page).to have_content 'Register An Account'

    fill_in 'Email', with: 'jack@example.com'
    fill_in 'Password', with: '123123123'
    fill_in 'Confirm password', with: '123123123'
    fill_in 'Username', with: 'jack'
    select 'Male', from: 'Gender'

    fill_in 'Birthday', with: '15-05-1995'
    check 'Agree to our Terms and Conditions'

    click_on 'Submit'

    expect(page).to have_content 'A message with a confirmation link has been sent to your email address.'
  end
end
