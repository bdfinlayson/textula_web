require 'rails_helper'

RSpec.describe StaticController, type: :controller do
  let(:user) { FactoryGirl.create :user }

  describe "GET #signed_in_home" do
    it 'redirects to sign in if not logged in' do
      get :signed_in_home
      expect(response).to redirect_to(new_user_session_path)
    end

    it 'gets the a signed in homepage when logged in' do
      sign_in user
      get :signed_in_home
    end
  end
end
