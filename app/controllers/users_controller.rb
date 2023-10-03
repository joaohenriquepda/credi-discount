class UsersController < ApplicationController

    def show
        @user = User.includes(:address, :contacts).find(params[:id])
    end
end
