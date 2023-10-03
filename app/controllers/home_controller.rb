class HomeController < ApplicationController
 
  def index
    @users = User.order(:name).page(params[:page]).per(params[:per_page])
  end

end