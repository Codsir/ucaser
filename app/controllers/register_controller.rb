class RegisterController < ApplicationController
  def new
    @user = User.new
  end
 
  def create
   @user = User.create(:names => user_params[:name], :password_digest => user_params[:password])
   if @user.save
    redirect_to :sessions_new
   else
    render "new"
   end
  end
 
  private
  def user_params
   params.require(:user).permit(:name, :password, :password_confirmation)
  end
end
