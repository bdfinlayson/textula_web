class Game < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"

  validates_presence_of :name, :creator_id
end
