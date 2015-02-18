module Steamwrap
  class PlayerInfo
    def get_player_summary(args)
      steam_key = args[:steam_key]
      player_id = args[:player_id]
      url = "http://api.steampowered.com/ISteamUser/GetPlayerSummaries/v0002/?key=#{steam_key}&steamids=#{player_id}"
      parsed_data(url)
    end
  end
end