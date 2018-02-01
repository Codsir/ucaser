# app/controllers/sessions_controller.rb
 
class SessionsController < ApplicationController
 def new
 end
 
 def create
  user = User.find_by(names: user_params[:name])
  if user.password_digest == user_params[:password]
   render  "welcome/welcomein"
  else
   flash.now[:login_error] = "invalid username or password"
   render "new"
  end
 end
 
 private
  def user_params
   params.require(:session).permit(:name, :password)
  end
end