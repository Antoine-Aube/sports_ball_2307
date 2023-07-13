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

  def average_cost_of_player
    average_cost = total_value / player_count
    string = "$" + average_cost.to_s
    string
  end

  def players_by_last_name
    last_names = ""
    #just realized I could have probably used sort_by enumerable to shorten
    @roster.each do |player|
      last_names << "#{player.last_name}, "
    end
    string = last_names.chomp(", ")
    first_sort = string.split(" ")
    sorted = first_sort.sort
    last_names = sorted.join(" ")
  end
end