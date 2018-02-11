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
            render "system_status"
        end
    end
    
    def cmd
        #@script = Script.new(params[:script].to_sym)
        #if script.nil?
         #   render_404
        #else
        #    render "cmd"
        #end
        
    end
    
    def pbs
    end
end