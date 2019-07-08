class SessionsController < ApplicationController

    def create
        if params[:name] == nil
            redirect_to login_path
            return
        elsif params[:name].length == 0
            redirect_to login_path
            return
        end
        session[:name] = params[:name]
        redirect_to root_path
    end

    def destroy
        if session[:name]
            session[:name] = nil
        end
    end
end
