class UsersController < ApplicationController
  before_action :load_user, only: [:edit, :update, :show]
  before_action :set_user, :finish_signup


  def edit
  end

  def update
    if @user.update(params[:user])
      redirect_to @user
    else
      render :edit
    end
  end

  def show
    @books = @user.books
    @wanted_books = @user.wanted_books
  end

  private

    def load_user
      @user = current_user
    end

    def user_params
      params.require(:user).permit() 
    end


  def finish_signup
    if request.patch? && params[:user] #&& params[:user][:email]
      if current_user.update(user_params)
        current_user.skip_reconfirmation!
        sign_in(current_user, :bypass => true)
        redirect_to current_user, notice: 'Your profile was successfully updated.'
      else
        @show_errors = true
      end
    end
  end
  
  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      accessible = [ :name, :email ] # extend with your own params
      accessible << [ :password, :password_confirmation ] unless params[:user][:password].blank?
      params.require(:user).permit(accessible)
    end
end
