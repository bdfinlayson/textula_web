class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, default: nil, unique: true, index: true
      t.text :description, default: nil
      t.integer :creator_id, index: true, foreign_key: true
      t.timestamps null: false
    end
  end
end
