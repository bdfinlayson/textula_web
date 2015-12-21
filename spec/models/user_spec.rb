require 'rails_helper'

RSpec.describe Game, type: :model do
  it "creates a user" do
    expect{ FactoryGirl.create(:user) }.to change(User, :count).by(1)
  end

end
