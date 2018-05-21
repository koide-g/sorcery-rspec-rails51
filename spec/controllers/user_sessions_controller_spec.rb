require 'rails_helper'

RSpec.describe UserSessionsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response.status).to eq(200)
    end
  end

  describe "GET #create" do
    it "returns http success" do
      get :create
      expect(response.status).to eq(200)
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      get :destroy
      expect(response.status).to eq(302)
    end
  end

end
