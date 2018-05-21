require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users" do
    it "show users list" do
      get users_path
      expect(response).to have_http_status(200)
    end
  end

  describe "GET /users/:id" do
    let!(:user) { create(:user) }

    before do
      login_user(user, 'password')
    end

    it "show user page" do
      get user_path(user.id)
      # expect(response).to have_http_status(200)
      expect(response.body).to include('個別')
    end
  end
end
