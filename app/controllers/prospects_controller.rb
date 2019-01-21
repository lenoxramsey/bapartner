class ProspectsController < ApplicationController
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
        @prospect = Prospect.find(params[:id])    
    end
    
    def edit
        @prospect = Prospect.find(params[:id])    
    end    
    
    def update
        @prospect = Prospect.find(params[:id])
        
        if @prospect.update(prospect_params)
            flash[:notice] = "Successfully saved prospect!"
            redirect_to prospects_path
        else
            render 'edit'
        end        
        
    end
    
    def destroy
        @prospect = Prospect.find(params[:id])
        @prospect.destroy
        flash[:notice] = "Prospect was removed!"
        redirect_to prospects_path
    end
    
    private
    
    def prospect_params
       params.require(:prospect).permit(:committeename, :contactemail, :contactphone, :contactfirst, :contactlast, :contacttitle, :billingstreetone, :billingstreettwo, :billingcity, :billingstate, :billingzip, :committeeurl) 
    end
end