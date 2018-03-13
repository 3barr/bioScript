class TrimmomaticsController < ApplicationController
    respond_to :html
    
    def new
        @trimmomatic = Trimmomatic.new
        
        @home = [params[:home]]
        @soft = [params[:soft]]
        @input = [params[:in]]
        @output = [params[:out]]
        
        
    end
    
    def create
        @trimmomatic = Trimmomatic.new(params[:trimmomatic])
        render :report
    end
    
    def report

        #options = trimmomatic.find(params[:trimmomatic])
        #send_data generate_pbs(options), filename: "command.pbs"
        
    end
    
    private
    
    def generate_pbs(options)
        target = "command.pbs"
        File.open(target, "w+") do |f|
            f.write("hello world")
        end
    end
    
end
