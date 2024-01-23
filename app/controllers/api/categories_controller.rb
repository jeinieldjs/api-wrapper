class Api::CategoriesController < ApplicationController
    def index
        categories = PublicApis::Client.categories
        render json: categories
    end
end
