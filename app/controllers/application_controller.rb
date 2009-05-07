class ApplicationController < ActionController::Base
  helper :all
  include ExceptionNotifiable
  include AuthenticatedSystem

  protect_from_forgery
  
  filter_parameter_logging :password
  before_filter :login_from_cookie
  
  
  private
    def verify_authenticity_token
      unless verified_request?
        flash[:warning] = "You must login to access that part of the site."
        respond_to do |format|
          format.html { redirect_to login_url }
          format.js  { render(:update) { |page| page.redirect_to(login_url) } }
        end
      end
    end
    
    def self.tiny_mce_options
      { :theme => 'advanced',
        :theme_advanced_toolbar_location => "top",
        :theme_advanced_toolbar_align => "left",
        :editor_selector => 'mceEditor',
        :theme_advanced_buttons1 => %w{ bold italic strikethrough separator bullist numlist separator indent outdent separator image link unlink},
        :theme_advanced_buttons2 =>  "",
        :theme_advanced_buttons3 =>  ""
      } 
    end
  
end



