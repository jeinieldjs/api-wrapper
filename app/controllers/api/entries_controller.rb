class Api::EntriesController < ApplicationController
    def index
        entries = PublicApis::Client.entries
        render json: entries
    end
end
