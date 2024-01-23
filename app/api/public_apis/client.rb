require_relative 'request'

module PublicApis
    class Client
        def self.entries
            response = Request.call(http_method: 'get', endpoint: "entries" )
        end
        
        def self.random
            response = Request.call(http_method: 'get', endpoint: "random" )
        end

        def self.categories
            response = Request.call(http_method: 'get', endpoint: "categories" )
        end

        def self.health
            response = Request.call(http_method: 'get', endpoint: "health" )
        end
    end
end
