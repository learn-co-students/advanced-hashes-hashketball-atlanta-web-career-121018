require "pry"

def game_hash 
  {
  :home => 
  {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {
        :player_name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
      },
      {
        :player_name => "Reggie Evans",
        :number => 30,
        :shoe => 14,
        :points => 12,
        :rebounds => 12, 
        :assists => 12,
        :steals => 12,
        :blocks => 12,
        :slam_dunks => 7
      },
      {
        :player_name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
      },
      {
        :player_name => "Mason Plumlee",
        :number => 1,
        :shoe => 19,
        :points => 26,
        :rebounds => 12,
        :assists => 6,
        :steals => 3,
        :blocks => 8,
        :slam_dunks => 5
      },
      {
        :player_name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    ]
  },
  :away => 
  {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {
        :player_name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
      },
      {
        :player_name => "Bismak Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
      },
      {
        :player_name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
      },
      {
        :player_name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
      },
      {
        :player_name => "Brendan Haywood",
        :number => 33,
        :shoe => 15,
        :points => 6,
        :rebounds => 12,
        :assists => 12,
        :steals => 22,
        :blocks => 5,
        :slam_dunks => 12
      }  
    ]
  }
  }
end

#########################################################

def num_points_scored (players_name)
  game_hash[:home][:players].each do |name|
    if name[:player_name] == players_name
      return name[:points]
    end
  end
  game_hash[:away][:players].each do |name|
    if name[:player_name] == players_name
      return name[:points]
    end
  end
end

#########################################################

def shoe_size (players_name)
  game_hash[:home][:players].each do |name|
    if name[:player_name] == players_name
      return name[:shoe]
    else
      game_hash[:away][:players].each do |name|
        if name[:player_name] == players_name
          return name[:shoe]
        end
      end
    end
  end
end

#########################################################

def team_colors (team_name)
  game_hash.each do |team, team_data|
    if team_data[:team_name] == team_name 
      return team_data[:colors]
    end
  end
end

#########################################################

def team_names
  final_names = []
  game_hash.each do |team, team_data|
    final_names << team_data[:team_name] 
  end
  return final_names
end

#########################################################

def player_numbers (team_name)
  final_players_numbers_array = []
  game_hash.each do |team, team_data|
    if team_data[:team_name] == team_name 
      team_data[:players].each do |data_title, data|
        final_players_numbers_array << data_title[:number]
      end
    end
  end
  return final_players_numbers_array
end

#########################################################

def player_stats (players_name)
  final_stats = {}
  game_hash.each do |team, team_data|
    team_data[:players].each do |stats|
      if stats[:player_name] == players_name
        final_stats = stats
      end
    end
  end
  final_stats.delete(:player_name)
  return final_stats
end

#########################################################

def big_shoe_rebounds
  compare_number = 0
  rebound_count = 0
  game_hash.each do |team, team_data|
    team_data[:players].each do |stats|
      if stats[:shoe] > compare_number
        compare_number = stats[:shoe]
        rebound_count = stats[:rebounds]
      end
    end
  end
  return rebound_count
end




# def good_practices
#   game_hash.each do |location, team_data|
#     binding.pry
#       team_data.each do |attribute, data|
#         binding.pry
#           data.each do |data_item|
#             binding.pry
#           end
#       end
#   end
# end
# good_practices





