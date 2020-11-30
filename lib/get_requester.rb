require 'open-uri'
require 'net/http'
require 'json'
require 'pry'


class GetRequester

    def initialize(url)
    end

    
    def get_response_body
        uri= URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        result = get_response_body
        JSON.parse(result)
    end


end