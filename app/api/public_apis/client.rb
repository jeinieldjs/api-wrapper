require_relative 'request'

module PublicApis
    class Client
        def self.list_all_entries
            response = Request.call(http_method: 'get', endpoint: "entries" )
        end
        
        def self.get_random_entry
            response = Request.call(http_method: 'get', endpoint: "random" )
        end

        def self.list_all_categories
            response = Request.call(http_method: 'get', endpoint: "categories" )
        end

        def self.check_health
            response = Request.call(http_method: 'get', endpoint: "health" )
        end
    end
end
