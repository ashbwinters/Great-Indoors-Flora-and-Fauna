class GardensController < ApplicationController
    before_action :authenticate, only: [:create, :index_by_user, :update, :delete]

    def create
        @garden = Garden.create(garden_params)
        render json: {message: "Plant added!"}, status: :created
    end

    def index
        @gardens = Garden.all
        render json: @gardens
    end
    
    def index_by_user
        @garden = Garden.where(user_id: @user.id)
        render json: @garden, include: [:houseplant]
    end

    def delete
        @garden = Garden.find(params[:id])
        @garden.destroy
        render json: @garden.index
    end

    private

    def garden_params
        params.require(:garden).permit(:houseplant_id).merge(user_id: @user.id)
    end
end


