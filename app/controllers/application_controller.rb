class ApplicationController < ActionController::Base

    before_action :require_login

    private


    
      def require_login
        if session[:user_id] == nil
          redirect_to '/login'
        end
      end

end
