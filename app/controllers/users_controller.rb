class UsersController < ApplicationController
  def index
    @users = User.all
  end
  def new
    @user = User.new
  end
 
  def create
     @user=User.new(params.require(:user).permit(:title,:start_at,:end_at,:allday,:memo))
     if @user.save
       flash[:notice]="ユーザーを新規登録しました"
       redirect_to:users
     else
       render "new"
     end
  end
 
  def show
    @user= User.find(params[:id])
  end
 
  def edit
  end
 
  def update
  end
 
  def destroy
  end
end
