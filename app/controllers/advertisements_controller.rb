class AdvertisementsController < ApplicationController

   def index
     @advertisements = Advertisement.all
   end
 
   def show
     @advertisements = Advertisement.find(params[:id])
   end
 
   def new
     @advertisements = Advertisement.new
   end
 
   def create
     @advertisements = Advertisement.new
     @advertisements.title = params[:advertisement][:title]
     @advertisements.body = params[:advertisement][:body]
     @advertisements.price = params[:advertisement][:price]
 
     if @advertisements.save
       flash[:notice] = "Ad was saved successfully."
       redirect_to @advertisements
     else
       flash.now[:alert] = "There was an error saving the ad. Please try again."
       render :new
     end
   end
 
   def edit
   end
 end
