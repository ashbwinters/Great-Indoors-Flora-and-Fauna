class GardensController < ApplicationController
    before_action :authenticate, only: [:create, :index, :update, :delete]

    def create
        @garden = Garden.create(garden_params)
        render status: :created
    end

    def index
        @garden = Garden.where(user_id: payload["user.id"])
        render json: @garden, include: [:houseplants, :user]
    end
end

private

def garden_params
    params.require(:user_id, :houseplant_id)
end