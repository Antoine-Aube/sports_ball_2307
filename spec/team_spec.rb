require './lib/player'
require './lib/team'


RSpec.describe Team do 
  describe "iteration_2" do 
    it "exists" do 
      team = Team.new("Dodgers", "Los Angeles")
      
      expect(team).to be_a Team
    end
    
    it "has a team roster" do 
      team = Team.new("Dodgers", "Los Angeles")
    
      expect(team.roster).to eq([])
    end 
  
    it "#player_count" do 
      team = Team.new("Dodgers", "Los Angeles")
    
      expect(team.player_count).to eq(0)
    end
  
    it "#add_player" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
  
      team.add_player(player_1)
      team.add_player(player_2)
    
      expect(team.roster).to eq([player_1, player_2])
      expect(team.player_count).to eq(2)
    end
  end
  describe "iteration 3" do 
    it "#long_term players" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
       player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
    # require 'pry';binding.pry
      expect(team.long_term_players).to eq([player_1, player_3])
    end 
  
    it "#short_term players" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
    
      expect(team.short_term_players).to eq([player_2, player_4])
    end
  
    it "#total_team_value" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.total_value).to eq(85200000)    
    end
    
    it "#details" do 
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    # require 'pry';binding.pry
    expect(team.details).to eq({"total_value" => 85200000, "player_count" => 4})
  end   
end 

  describe "iteration_4" do   
    it "#average_cost_of_player" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.average_cost_of_player).to eq("$21,300,000")
    end
    it "players_by_last_name" do 
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      # require 'pry';binding.pry
      expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end
  end
end