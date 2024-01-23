class Api::RandomController < ApplicationController
    def index
        random_api = PublicApis::Client.random
        render json: random_api
    end
end
