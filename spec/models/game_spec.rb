require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:user) { FactoryGirl.create(:user) }

  describe "creating a game" do
    it "creates a game" do
      expect{ user.games.create(name: "My Game", description: "My awesome game") }.to change(Game, :count).by(1)
    end

    it "associates a game to its creator" do
      expect{ user.games.create(name: "My Game", description: "My awesome game") }.to change(user.games, :count).by(1)
    end

    it 'does not save games with no name' do
      game = user.games.create(name: "", description: "blah")
      expect(game.errors.full_messages.join "").to eq "Name can't be blank"
    end

    it 'throws an error with missing data' do
      game = user.games.create(name: "", description: "blah")
      expect{ game.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
