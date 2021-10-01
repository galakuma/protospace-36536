class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @Prototype = Prototype.new
    @prototypes = @user.prototypes.includes(:user)
  end

end
