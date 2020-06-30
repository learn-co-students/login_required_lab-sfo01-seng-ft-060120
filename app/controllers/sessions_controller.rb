class SessionsController < ApplicationController
    def new

    end

    def create
        if params[:name] == "" || params[:name] == nil
            redirect_to root_path
        else
            session[:name] = params[:name]
            redirect_to logged_in_path
        end
    end

    def destroy
        session.delete :name
        redirect_to root_path
    end
end