module PasswordRecoveryHelpers

  def recover_password
    visit '/users/recover'
    fill_in :email, with: 'alice@example.com'
    click_button 'Submit'
  end


end
