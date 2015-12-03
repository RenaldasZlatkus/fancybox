class UsersController < ApplicationController

	def index
		@users = User.all
		@users = User.find(params[:id])
	end

	def show
		@user = User.find(params[:id])
	end

	def new
		@users = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			flash[:notice] = "Your account was created successfully."
			redirect_to '/'
		else
			flash.now[:alert] = "There was a problem saving your account."
			redirect_to '/signup'
		end
	end

	def destroy
		@user = User.find(params[:id])
		if @user.destroy
			flash[:notice] = "The user was deleted successfully."
		else
			flash[:alert] = "There was a problem deleting this user."
		end
		redirect_to users_path
	end

	private
	def user_params
		params.require(:user).permit(:fname, :lname, :email, :password)
	end

end
