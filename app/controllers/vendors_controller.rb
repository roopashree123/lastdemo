class VendorsController < ApplicationController
  def new
   @vendor = Vendor.new
  end

  def create
   @vendor = Vendor.new(params[:vendor])
    if @vendor.save
	sign_in @vendor
	redirect_to @vendor
	 flash[:success] = "Welcome to FreeIndiaCoupons!"
      
    else
      render 'new'
	
  end
  end

  def show

 @vendor = Vendor.find(params[:id])	
  end




  
end
