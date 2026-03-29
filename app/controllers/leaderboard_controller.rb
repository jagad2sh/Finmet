class LeaderboardController < ApplicationController
  def index
    @players = Player.includes(:wins, :losses).all.sort_by do |p|
                   total = p.wins.count + p.losses.count
                   ratio = total > 0 ? p.wins.count.to_f / total : 0
                   [-p.wins.count, -ratio, p.losses.count, p.name]
                 end
  end
end
