class BbduksController < ApplicationController
    respond_to :html
    
    def new
        @bbduk = Bbduk.new
    end
    
    def create
        @bbduk = Bbduk.new(params[:bbduk])
        
        render :report
    end
    
    def report
    end
end
