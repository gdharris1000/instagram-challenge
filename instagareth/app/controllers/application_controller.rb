class ApplicationController < ActionController::Base

    # before_action :authorized
    # skip_before_action :authorized, only[root_path, :login]
    helper_method :current_user
    helper_method :logged_in?

    def current_user
        User.find_by(id: session[:user_id])
    end

    def logged_in?
        !current_user.nil?
    end


    # def authorized
    #     redirect_to root_path unless logged_in?
    # end

end
