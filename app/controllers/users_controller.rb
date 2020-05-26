class UsersController < ApplicationController
    def create
        @user = User.create(user_params)
        render json: {user: @user}, status: :created
    end
end


private

def user_params
    params.require(:username, :password)
end