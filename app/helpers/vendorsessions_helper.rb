module VendorsessionsHelper
def sign_in(vendor)
    cookies.permanent[:remember_token] = vendor.remember_token
    self.current_vendor = vendor
  end 

  def current_vendor=(vendor)
    @current_vendor = vendor
  end

  def current_vendor
    @current_vendor ||= Vendor.find_by_remember_token(cookies[:remember_token])
  end

  def signed_in?
    !current_vendor.nil?
  end

   def sign_out
    self.current_vendor = nil
    cookies.delete(:remember_token)
  end
end
