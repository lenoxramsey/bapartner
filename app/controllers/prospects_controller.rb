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
            flash[:notice] = "Prospect was added successfully!"
            redirect_to prospect_path(@prospect)
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
            flash[:notice] = "Prospect was successfully updated!"
            redirect_to prospect_path(@prospect)
        else
            render 'edit'
        end        
        
    end
    
    def destroy
        @prospect = Prospect.find(params[:id])
        @prospect.destroy
        flash[:notice] = "Prospect was successfully deleted!"
        redirect_to prospects_path
    end
    
    private
    
    def prospect_params
       params.require(:prospect).permit(:committeename, :contactemail, :contactphone, :contactfirst, :contactlast, :contacttitle, :billingstreetone, :billingstreettwo, :billingcity, :billingstate, :billingzip, :committeeurl) 
    end
end