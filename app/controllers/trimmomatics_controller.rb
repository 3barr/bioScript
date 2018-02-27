class TrimmomaticsController < ApplicationController
    respond_to :html
    
    def new
        @trimmomatic = Trimmomatic.new
    end
    
    def create
        @trimmomatic = Trimmomatic.new(params[:trimmomatic])
        
        render :report
    end
    
    def report
    end
end
