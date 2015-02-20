module Steamwrap
  class SteamUser
    include Steamwrap::GetDatData
    
    attr_reader :steam_key
    attr_reader :player_id 

    def initialize(args)
      @steam_key = args[:steam_key]
      @player_id = args[:player_id]
    end

    def get_player_summary
      url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{steam_key}&steamids=#{player_id}"
      parsed_data(url)
    end

    def get_friend_list
      url = "http://api.steampowered.com/ISteamUser/GetFriendList/v0001/?key=#{steam_key}&steamid=#{player_id}&relationship=friend"
      parsed_data(url)
    end

    def get_player_achievements
      url = "http://api.steampowered.com/ISteamUserStats/GetPlayerAchievements/v0001/?appid=440&key=#{steam_key}&steamid=#{player_id}"
      parsed_data(url)
    end

    def get_user_stats_for_game
      url =  "http://api.steampowered.com/ISteamUserStats/GetUserStatsForGame/v0002/?appid=440&key=#{steam_key}&steamid=#{player_id}"
      parsed_data(url)
    end

    def get_owned_games
      url = "http://api.steampowered.com/IPlayerService/GetOwnedGames/v0001/?key=#{steam_key}&steamid=#{player_id}&format=json"
      parsed_data(url)
    end

    def get_recently_played_games
      url = "http://api.steampowered.com/IPlayerService/GetRecentlyPlayedGames/v0001/?key=#{steam_key}&steamid=#{player_id}&format=json"
      parsed_data(url)
    end

    def is_playing_shared_game(app_id = 240)
      url = " http://api.steampowered.com/IPlayerService/IsPlayingSharedGame/v0001/?key=#{steam_key}&steamid=#{player_id}&appid_playing=#{app_id}&format=json"
      parsed_data(url)
    end

    def get_player_bans
      url = " http://api.steampowered.com/ISteamUser/GetPlayerBans/v1/?key=#{steam_key}&steamids=#{player_id}"
      parsed_data(url)
    end
  end
end

