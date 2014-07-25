class VendorsessionsController < ApplicationController
  def new
  end

  def create
  vendor = Vendor.find_by_email(params[:vendorsession][:email].downcase)
     if vendor && vendor.authenticate(params[:vendorsession][:password])
      sign_in vendor
	  redirect_to vendor

     else
      flash.now[:error] = 'Invalid email/password combination'
	  render 'new'

	
     end
  end


  def destroy
  sign_out
    redirect_to root_url
  end
end
