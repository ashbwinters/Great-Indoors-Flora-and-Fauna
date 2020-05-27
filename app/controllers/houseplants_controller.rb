class HouseplantsController < ApplicationController

    def index
        @houseplants = Houseplant.all
        render json: @houseplants
    end

    def show
        @houseplant = Houseplant.find(params[:id])
        render json: @houseplant
    end
end
