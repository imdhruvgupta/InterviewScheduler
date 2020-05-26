class SessionsController < ApplicationController
    def index
        @sessions = Session.all
    end
    
    def new
    end
    
    def create
        
        
        @session = Session.new(session_params)
        @session.save
        redirect_to sessions_path
        
    end
    
    
    def edit
        @session = Session.find(params[:id])
    end
    
    def destroy
        @session = Session.find(params[:id])
        @session.destroy
        redirect_to sessions_path
    end
    
    private
    def session_params
        params.require(:session).permit(:start, :end, :user_id)
    end
end
