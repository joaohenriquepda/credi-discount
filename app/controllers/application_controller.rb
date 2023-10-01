class ApplicationController < ActionController::Base

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
        
    # Allows you to record nested user information and relationships÷
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [
            :name, 
            :cpf, 
            :birth_date,
            :email,
            :password, 
            :password_confirmation, 
            address_attributes:[:street, :number, :district, :city, :state, :zip_code]] )
    end


end
