# README

## Getting Started

### Quick Test
```bash
git clone https://github.com/jagad2sh/Finmet.git
cd Finmet
docker-compose up
```
Then visit `http://localhost:3000`

---

### Prerequisites

- Ruby 3.4+
- Rails 8.1+
- SQLite3

### Setup

```bash
# Clone the repository
git clone https://github.com/jagad2sh/Finmet.git
cd Finmet

# Install dependencies
bundle install

# Setup the database
rails db:migrate

# Start the server
rails server
```

Then visit `http://localhost:3000`

---

## Models

### Player
| Column | Type | Notes |
|--------|------|-------|
| id | integer | primary key |
| name | string | unique, required |

### Match
| Column | Type | Notes |
|--------|------|-------|
| id | integer | primary key |
| winner_id | integer | FK → players.id |
| loser_id | integer | FK → players.id |

---

## Associations

```ruby
# A player has many wins and losses
player.wins    # => all matches where this player won
player.losses  # => all matches where this player lost

# A match belongs to a winner and a loser
match.winner   # => the winning Player record
match.loser    # => the losing Player record
```

