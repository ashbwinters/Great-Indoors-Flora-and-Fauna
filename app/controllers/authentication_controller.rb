class AuthenticationController < ApplicationController
    def login
        @user = User.find_by(username: params[:username])
        if !@user 
            render json: {error: "Username is incorrect"}, status: :unauthorized
        else
            if !@user.authenticate(params[:password])
                render json: {error: "Password is incorrect"}, status: :unauthorized
            else
                payload = { user_id: @user.id }
                secret = Rails.application.secrets.secret_key_base
                token = JWT.encode(payload, secret)
                render json: {token: token}, status: :ok
            end
        end
    end
end
