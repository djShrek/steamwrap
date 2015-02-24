module Steamwrap
  class Dota2
    include Steamwrap::GetDatData
    attr_reader :steam_key
    attr_reader :player_id

    def initialize(args = {})
      @steam_key = args[:steam_key]
      @player_id = args[:player_id]
    end

    def get_league_listing
      url = "http://api.steampowered.com/IDOTA2Match_570/GetLeagueListing/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_live_league_games 
      url = "http://api.steampowered.com/IDOTA2Match_570/GetLiveLeagueGames/v1/key=#{steam_key}"
      parsed_data(url)
    end

    def get_match_details
      url = "http://api.steampowered.com/IDOTA2Match_570/GetMatchDetails/v1/key=#{steam_key}"
      parsed_data(url)
    end

    def get_match_history
      url = "http://api.steampowered.com/IDOTA2Match_570/GetMatchHistory/v1?key=#{steam_key}"
      parsed_data(url)
    end

    def get_match_history_by_sequence_number
      url = "http://api.steampowered.com/IDOTA2Match_570/GetMatchHistoryBySequenceNum/v1?key=#{steam_key}"
      parsed_data(url)
    end

    def get_scheduled_league_games
      url = "http://api.steampowered.com/IDOTA2Match_570/GetScheduledLeagueGames/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_team_info_by_team_id
      url = "http://api.steampowered.com/IDOTA2Match_570/GetTeamInfoByTeamID/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_tournament_prize_pool
      url = "http://api.steampowered.com/IDOTA2Match_570/GetTournamentPlayerStats/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_rarities
      url = "http://api.steampowered.com/IEconDOTA2_570/GetRarities/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_heroes
      url = "http://api.steampowered.com/IEconDOTA2_570/GetHeroes/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_tournament_prize_pool
      url = "http://api.steampowered.com/IEconDOTA2_570/GetTournamentPrizePool/v1/?key=#{steam_key}"
      parsed_data(url)
    end
  end
end