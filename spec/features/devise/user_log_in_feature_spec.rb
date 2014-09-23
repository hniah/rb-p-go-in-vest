require 'rails_helper'

describe 'User Log in Feature' do
  before { User.create(email: 'jack@example.com', password: '123123123', gender: :male) }

  it 'allows user to log in' do
    visit root_path

    click_on 'Sign In'

    expect(page).to have_content 'User Sign In'

    fill_in 'Email', with: 'jack@example.com'
    fill_in 'Password', with: '123123123'
    click_on 'Log In'

    expect(page).to have_content 'Signed in successfully.'
    expect(page).to have_content 'Welcome, jack@example.com'
  end
end
