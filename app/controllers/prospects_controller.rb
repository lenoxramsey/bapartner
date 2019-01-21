class ProspectsController < ApplicationController
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
    
    private
    
    def prospect_params
       params.require(:prospect).permit(:committeename, :contactemail, :contactphone, :contactfirst, :contactlast, :contacttitle, :billingstreetone, :billingstreettwo, :billingcity, :billingstate, :billingzip, :committeeurl) 
    end
end