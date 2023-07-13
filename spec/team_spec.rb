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
end
# team = Team.new("Dodgers", "Los Angeles")
# player_1 = Player.new("Michael Palledorous" , 1000000, 36)
# player_2 = Player.new("Kenny DeNunez", 500000, 24)
# player_3 = Player.new("Alan McClennan", 750000, 48)
# player_4 = Player.new("Hamilton Porter", 100000, 12)
# team.add_player(player_1)
# team.add_player(player_2)
# team.add_player(player_3)
# team.add_player(player_4)