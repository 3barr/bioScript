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
            redirect_to bbduks_new_url
        elsif(@survey.tool =="Trimmomatic")
            #render :trimmomatic_options
            redirect_to trimmomatics_new_url
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
        #@survey = Survey.update_attributes(params[:survey])
        
        
        render :report
        
    end
    
    def trimmomatic_options
        render :report
    end
    
    def report
    end
    
    
    
    private
    
    def current_tool
        @tool1 ||= session[:tool] && survey.find_by(id: session[:tool])
    end
    
end