# Add sample data

# Create players
iron_man        = Player.create!(name: "Iron Man")
captain_america = Player.create!(name: "Captain America")
hawkeye         = Player.create!(name: "Hawkeye")
black_widow     = Player.create!(name: "Black Widow")
thor            = Player.create!(name: "Thor")
hulk            = Player.create!(name: "Hulk")

# Create 10 matches
Match.create!(winner: iron_man,        loser: hawkeye)
Match.create!(winner: captain_america, loser: black_widow)
Match.create!(winner: thor,            loser: hulk)
Match.create!(winner: black_widow,     loser: iron_man) # not true, just for the data
Match.create!(winner: hulk,            loser: captain_america)
Match.create!(winner: iron_man,        loser: thor)
Match.create!(winner: hawkeye,         loser: black_widow)
Match.create!(winner: captain_america, loser: thor)
Match.create!(winner: hulk,            loser: hawkeye)
Match.create!(winner: thor,            loser: black_widow)