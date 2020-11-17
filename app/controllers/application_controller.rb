class ApplicationController < ActionController::Base
    # rails_method  attribute: :symbol
    protect_from_forgery with: :exception

    def authenticate
        if !signed_in?
            redirect_to new_session_path
        end
    end

    def signed_in?
        # route[:symbol].notblank?
        current_email.present?
    end

    def current_email
        session[:current_email]
    end
    
    def sign_in_as(email)
        session[:current_email] = email
    end

end

# redirect_to(options = {}, response_options = {})
# new_session_path (rails) =? newpath_route_pathmethod

# present? => An object is present if it's not blank. => @return [true, false]