require 'rest-client'

module PublicApis
  class Request
    BASE_URL = 'https://api.publicapis.org/'

    def self.call(http_method:, endpoint:, params: {})
      url = "#{BASE_URL}#{endpoint}"

      result = RestClient::Request.execute(
        method: http_method,
        url: url,
        headers: {'Content-Type' => 'application/json'},
        payload: params.to_json
      )

      JSON.parse(result.body)
    end
  end
end
