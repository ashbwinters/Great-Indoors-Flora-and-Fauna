class UsersController < ApplicationController
    def create
        @user = User.create(
            username: params[:username],
            password: params[:password]
            )
        render json: {user: @user, include: [:garden, :houseplants]}, status: :created
    end
end


