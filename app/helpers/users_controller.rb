class UsersController < ApplicationController
   before_filter :authenticate, :only => [:edit, :update]
   before_filter :correct_user, :only => [:edit, :update]

  def new
    @title = "Sign up"
  end
  
  def edit
    @title = "Edit user"
  end
  private

    def authenticate
      deny_access unless signed_in?
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end