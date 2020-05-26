class AuthenticationController < ApplicationController
    def login
        @user = User.find_by(username: params[:username])
        if !@user 
            render json: {error: "Username is incorrect"}, status: :unauthorized
        else
            if !@user.authenticate(params[:password])
                render json: {error: "Password is incorrect"}, status: :unauthorized
            else
                render json: {message: "Sucess!"}, status: :ok
            end
        end
    end
end
