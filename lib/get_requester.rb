require 'open-uri'
require 'json'
require 'net/http'

# Write your code here
class GetRequester
    
    attr_reader :url

    def initialize(url)
        @url = url
    end

    def get_response_body
        uri = URI.parse(@url)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        json_return = JSON.parse(get_response_body)
    end

end