class Team 
  attr_reader :team_name, :city, :roster

  def initialize(team_name, city)
    @team_name = team_name
    @city = city
    @roster = []
  end

  def player_count
    @roster.count 
  end

  def add_player(player)
    @roster << player
  end

  def long_term_players
    players = []
    @roster.each do |player|
      players << player if player.contract_length > 24
    end
    players
  end

  def short_term_players
    players = []
    @roster.each do |player|
      players << player if player.contract_length <= 24
    end
    players
  end

  def total_value
    total_team_value = 0
    
    roster.each do |player|
      total_team_value += player.total_cost
    end
    total_team_value
  end

  def details
    details = {
      "total_value" => total_value,
      "player_count" => player_count
    }
    details
  end
end