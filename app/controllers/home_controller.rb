class HomeController < ApplicationController
    before_action :current_user

    private

    def current_user
        if session[:user_id]
            @user = User.find(session[:user_id])
        else
           redirect_to new_session_path 
        end
    end
end