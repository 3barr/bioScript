class PagesController < ApplicationController
    
    def about
        @hello = "hello from the controller"
    end
    
    def help
    end
    
    def show
        command = OODPages[params[:id].to_sym] || nil
        if command.nil?
            render_404
        else
            render "cmd"
        end
    end
    
    
    def cmd
    end
    
    def create
    end
end