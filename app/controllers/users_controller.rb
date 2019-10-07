class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:format])
  end

  def destroy
    @user = User.find(params[:format])
    @user.destroy
    redirect_to users_new_path(@user.id)
  end

  def create
    @user = User.create(user_params)
    if @user.save 
      flash[:success] = "Bravo ! Vous êtes inscris, vous pouvez désormais consulter vos informations personnelles et votre score"
      redirect_to users_show_path(@user.id)
    else
      render 'new'
    end
  end

  def showScoreHtml
    @random = randomNumber
    @user = User.find(params[:format])
    @difference = (@random - @user.number).abs
  end

  
  def showScoreJson
    @random = randomNumber
    @user = User.find(params[:format])
    render json: @user
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :job, :email, :number)
  end

  def randomNumber
    rand 10
  end

end
