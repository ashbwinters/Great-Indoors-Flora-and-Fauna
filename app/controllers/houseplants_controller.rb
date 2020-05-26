class HouseplantsController < ApplicationController

    def index
        @houseplants = Houseplant.all
        render json: @houseplants
    end

    def show
        @Houseplant = Houseplant.find(params[:id])
        render json: @Houseplant
    end
end
