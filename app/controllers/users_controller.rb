# Controller
class UsersController < ApplicationController
  def show
    Rails.logger.info "List all users with paginate"
    @user = User.includes(:address, :contacts).find(params[:id])
  end
end
