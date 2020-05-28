class GardensController < ApplicationController
    before_action :authenticate, only: [:create, :index, :update, :delete]

    def create
        @garden = Garden.create(
            user_id: params[:@user.id],
            houseplant_id: params[:houseplant_id])
        render json: @garden.index
    end

    def index
        @garden = Garden.where(user_id: @user.id)
        render json: @garden, include: [:houseplants]
    end

    def delete
        @garden = Garden.find(params[:id])
        @garden.destroy
        render json: @garden.index
    end
end
