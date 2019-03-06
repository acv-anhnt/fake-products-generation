class CategoriesController < ApplicationController
    def index
        @categories = Category.all
        json_response(@categories)
    end
end