class GamesController < ApplicationController
  def new
  	@user = Game.new
  end

  def create
  	@user = Game.new(user_params)
  	if @user.save
  		flash.keep[:success] = "Yo Yo"
  	else
  		flash[:danger] = "Not Success"
  	end
    # byebug
  	redirect_to root_path
  	flash[:successs] = "a"
  end


  private
  	def user_params
  		params.require(:game).permit(:user, :partner)
  	end
end
