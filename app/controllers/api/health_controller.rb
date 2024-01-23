class Api::HealthController < ApplicationController
    def index
        health = PublicApis::Client.health
        render json: health
    end
end
