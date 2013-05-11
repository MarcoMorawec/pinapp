class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])

	   @pins = @user.pins.page(params[:page]).per_page(20)

	  
	  respond_to do |format|
      	format.html # show.html.erb
      	format.json { render json: @pins }
      	format.js
	     end
  end
end
