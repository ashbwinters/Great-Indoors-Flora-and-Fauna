class GardensController < ApplicationController
    before_action :authenticate, only: [:create, :index, :update, :delete]

    def create
        @garden = Garden.create(
            user_id: params[:user_id],
            houseplant_id: params[:houseplant_id])
        render json: {message: "Plant added!"}, status: :created
    end

    def index
        @gardens = Garden.all
        render json: @gardens
    end
    
    def index_by_user
        @garden = Garden.where(user_id: :user_id)
        render json: @garden
    end

    def delete
        @garden = Garden.find(params[:id])
        @garden.destroy
        render json: @garden.index
    end
end


