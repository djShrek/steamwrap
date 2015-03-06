module Steamwrap
  @api_key = ENV["STEAM_API_KEY"]

  def self.api_key
    if @api_key.nil?
      @api_key = ENV["STEAM_API_KEY"]
    else 
      raise ArgumentError, "Set your STEAM API key in an environment variable ENV['STEAM_API_KEY']"
    end 
  end

  def self.api_key=(api_key)
    @api_key = api_key
  end
end