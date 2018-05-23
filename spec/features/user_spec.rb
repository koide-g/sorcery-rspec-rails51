require 'rails_helper'

RSpec.feature "User", type: :feature do
  let(:user) {create(:user)}
  scenario "ユーザ一覧を表示する" do
    visit users_path
    # save_and_open_page
    expect(page).to have_text("Users")
  end

  scenario "ユーザ個別ページを表示する" do
    visit login_path
    fill_in 'email', with: user.email
    fill_in 'password', with: 'password'
    click_button 'Login'

    visit user_path(user.id)
    # save_and_open_page
    expect(page).to have_text("個別")

    click_link 'Logout'
    save_and_open_page
    expect(page).to have_text("Please login first")
  end
end
