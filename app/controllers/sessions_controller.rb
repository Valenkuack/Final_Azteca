class SessionsController < Devise::SessionsController
    #after_sign_in_path_for is called by devise
    def after_sign_in_path_for(user)
         "/signedinuserprofile"
    end
    
    def after_sign_out.path_for(resource)
       home_path
    end
end
