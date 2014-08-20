class UsersController < ApplicationController

	def show
		@user = User.find(params[:id])
	end

	def edit
		@user = User.find(params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user].permit(:name, :age, :sex, :max_rent, :min_move_in, :max_move_out, :max_travel_time, :image))
			redirect_to :action => 'show', :id => @user
		else
			@users = User.find(:all)
			render :action => 'edit'
		end
	end

end
