require 'steamwrap'

argz = {steam_key: "55BA1C088556CDF59A3B43120193700F", player_id:  76561198033544098}

player_info = Steamwrap::SteamUser.new(argz)

puts player_info.get_player_bans