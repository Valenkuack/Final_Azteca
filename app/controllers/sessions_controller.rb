class SessionsController < Devise::SessionsController
    #after_sign_in_path_for is called by devise
    def after_sign_out.path_for(resource)
       home_path
    end
    
    def user_signed_in
        if menus_path
            else
                home_path
    end


end