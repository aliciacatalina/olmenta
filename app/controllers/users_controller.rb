class UsersController < ApplicationController
  before_action :load_user, only: [:edit, :update, :show]

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
end
