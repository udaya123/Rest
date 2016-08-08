class HomeController < ApplicationController
 def index
     if user_signed_in?
      if current_user.Role == 'owner'
        redirect_to user_restaurants_path(current_user.id)
      else
       redirect_to categories_path
     end
     else
       redirect_to new_user_session_path 
     end
  end
end
