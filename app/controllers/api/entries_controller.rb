class Api::EntriesController < ApplicationController
    def index
        entries = PublicApis::Client.entries
        render json: entries
    end

    def filter_by_category
        category = params[:category]
        response = PublicApis::Client.entries_by_category(category)
        render json: response
    end
end