class SessionsController < ApplicationController
    def new
        
    end

    def create
        # Call params to access form data (i.e., form_for :session, f.label :email )
        session[:current_email] = params[:session][:email]
        redirect_to root_path
    end
end

# params comes from ActionController::Base, which is accessed by your application via ApplicationController
# params[:id] 