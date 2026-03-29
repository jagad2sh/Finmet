class Match < ApplicationRecord
  belongs_to :winner, class_name: "Player"
  belongs_to :loser, class_name: "Player"

  validate :check_duplicate_player

  private
  def check_duplicate_player
    errors.add(:base, "A player cannot play against themselves") if self.winner_id == self.loser_id
  end
end
