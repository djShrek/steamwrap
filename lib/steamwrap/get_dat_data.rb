require 'open-uri'
require 'json'
require 'awesome_print'

module Steamwrap
  module GetDatData
    def parsed_data(url)
      data = URI.parse(url).read
      JSON.parse(data)
    end
  end
end