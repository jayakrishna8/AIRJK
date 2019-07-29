class UsersController < ActionController::Base
  def show
  	@user = User.find(params[:id])
  	@rooms = @user.rooms
  end
end