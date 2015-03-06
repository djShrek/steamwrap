require 'open-uri'
require 'json'

# GetDatData is used to send requests to the STEAM web API 
# Parses the JSON string into a Ruby hash

module Steamwrap
  module GetDatData
    def parsed_data(url)
      data = URI.parse(url).read
      JSON.parse(data)
    rescue JSON::ParserError
      { error: '500 Internal Server Error' }
    end
  end
end