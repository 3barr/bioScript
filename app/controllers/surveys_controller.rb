class SurveysController < ApplicationController
    respond_to :html 
    
    def new
        @survey = Survey.new
    end
    
    def create
        @survey = Survey.new(params[:survey])
        @survey.register
        
        #not valid, always following else case
        if @survey.valid?
            render :bbduk_options
        else
            #render :bbduk_options
            render :trimmomatic_options
            #respond_with @survey, location: new
        end
        #respond_with @survey, location: surveys_bbduk_options_path(@survey)
    end
    
    def bbduk_options
    end
    
    def trimmomatic_options
    end
    
end