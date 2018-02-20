class SurveysController < ApplicationController
    respond_to :html 
    
    def new
        @survey = Survey.new
        
    end
    
    def create
        @survey = Survey.new(params[:survey])
        @survey.register
        
        #need to get value from URL as to what tool was selected
        #save variable as a param
        #then direct to the correct options based on tool param
        
        if (@survey.tool=="BBDuk")
            render :bbduk_options
        elsif(@survey.tool =="Trimmomatic")
            render :trimmomatic_options
        else
            render :new
        end
    end
    
    def update
        @survey = Survey.find(params[:id])
    end
    
    
    def bbduk_options
        @survey = Survey.update(params[:survey])
        #@survey = Survey.new(params[:survey])
        #survey = Survey.update_attributes(params[:survey])
        
        
        render :report
        
    end
    
    def trimmomatic_options
    end
    
    def report
    end
    
    
    
    private
    
    def current_tool
        @tool1 ||= session[:tool] && survey.find_by(id: session[:tool])
    end
    
end