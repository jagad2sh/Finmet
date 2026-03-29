class Player < ApplicationRecord
  has_many :wins, class_name: "Match", foreign_key: "winner_id"
  has_many :losses, class_name: "Match", foreign_key: "loser_id"

  validates :name, presence: true, uniqueness: true
  before_save { self.name = name.downcase }
end
