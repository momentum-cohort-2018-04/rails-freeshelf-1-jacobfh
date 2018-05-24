class UserController < ApplicationController
    def index
        @user = User.all
    end

    def new
    end

    def create
        @user = User.new (user_params)
        if @user.save
            redirect_to new_login_path , "Successful login"
        end
    end

    def user_params
    end
end
