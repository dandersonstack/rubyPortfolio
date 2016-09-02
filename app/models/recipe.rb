class Recipe
    include HTTParty
    
    ENV['FOOD2FORK_KEY'] = "8cd32e3d1712bd8a60dfb6760d0632e5"
    hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com' 
    base_uri "http://#{hostport}/api"
    default_params key: ENV['FOOD2FORK_KEY']
    format :json
    
    def self.for term
        get("/search", query:{q: term})["recipes"]
    end
end
