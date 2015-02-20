module Steamwrap
  class IEconItems
    include Steamwrap::GetDatData

    GAME_IDS = { "CS:GO" => 260, "DOTA2" => 570, "TF2" => 440, "PORTAL2" => 620 }

    attr_reader :player_id
    attr_reader :steam_key

    def initialize(args)
      @game_id   = args[:game_id]
      @player_id = args[:player_id]
      @steam_key = args[:steam_key]
    end

    def get_player_items(game_id)
      econ_id = GAME_IDS[game_id]
      url = "http://api.steampowered.com/IEconItems_#{econ_id}/GetPlayerItems/v0001/?SteamID=#{player_id}&key=#{steam_key}"
      parsed_data(url)
    end

    def get_schema(game_id)
      econ_id = GAME_IDS[game_id]
      url = "http://api.steampowered.com/IEconItems_#{econ_id}/GetSchema/v0001/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_schema_url(game_id)
      econ_id = GAME_IDS[game_id]
      url = "http://api.steampowered.com/IEconItems_#{econ_id}/GetSchemaURL/v1/?key=#{steam_key}"
      parsed_data(url)
    end

    def get_store_meta_data(game_id)
      econ_id = GAME_IDS[game_id]
      url = "http://api.steampowered.com/IEconItems_#{econ_id}/GetStoreMetaData/v1/?key=#{steam_key}"
      parsed_data(url)
    end
  end
end
