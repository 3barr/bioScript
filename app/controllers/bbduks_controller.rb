class BbduksController < ApplicationController
    respond_to :html
    
    def new
        @bbduk = Bbduk.new
        
        @home = [params[:home]]
        @soft = [params[:soft]]
        @input = [params[:in]]
        @output = [params[:out]]
    end
    
    def create
        @bbduk = Bbduk.new(params[:bbduk])
        
        render :report
    end
    
    def report
        send_data("hello", :filename => "bbdukTrim.pbs")
    end
    
    def generate_pbs(options)
        target = "command.pbs"
        File.open(target, "w+") do |f|
            f.write("hello world")
        end
    end
end
