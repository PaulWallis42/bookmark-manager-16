require 'spec_helper'

feature 'User sign up' do
  scenario 'I can sign up as a new user' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, alice@example.com')
    expect(User.first.email).to eq('alice@example.com')
  end

  scenario 'requires a matching confirmation password' do
    expect { sign_up(password_confirmation: 'wrong') }.not_to change(User, :count)
  end

  scenario 'failing confirmation password does not redirect page' do
    sign_up(password_confirmation: 'wrong')
    expect(current_path).to eq('/users')
    expect(page).to have_content('Password and confirmation password do not match')
  end

  scenario 'I can not sign up without an e mail address' do
    expect { sign_up(email: nil) }.not_to change(User, :count)
  end

  scenario 'I can\'t sign up with an invalid e mail address' do
    expect {sign_up(email: 'invalid@email')}.not_to change(User, :count)
  end

end
