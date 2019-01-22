class ProspectsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_prospect, only: [:edit, :update, :show,:destroy]
    
    def index
       @prospects = Prospect.all 
    end
    
    def new
       @prospect = Prospect.new 
    end
    
    def create
       @prospect = Prospect.new(prospect_params) 
       
        if @prospect.save
            flash[:notice] = "Successfully saved prospect!"
            redirect_to prospects_path
        else
            render 'new'
        end
    end
    
    def show

    end
    
    def edit

    end    
    
    def update
        
        
        if @prospect.update(prospect_params)
            flash[:notice] = "Successfully saved prospect!"
            redirect_to prospects_path
        else
            render 'edit'
        end        
        
    end
    
    def destroy
        
        @prospect.destroy
        flash[:notice] = "Prospect was removed!"
        redirect_to prospects_path
    end
    
    private
    
    def set_prospect
        @prospect = Prospect.find(params[:id])
    end
    
    def prospect_params
       params.require(:prospect).permit(:committeename, :contactemail, :contactphone, :contactfirst, :contactlast, :contacttitle, :billingstreetone, :billingstreettwo, :billingcity, :billingstate, :billingzip, :committeeurl) 
    end
end