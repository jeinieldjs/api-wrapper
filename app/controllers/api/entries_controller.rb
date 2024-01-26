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

    def supports_https
        response = PublicApis::Client.supports_https
        render json: response
    end

    def filter_by_title
        title = params[:title]
        response = PublicApis::Client.entries_by_title(title)
        render json: response
    end

end