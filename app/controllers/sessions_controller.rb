class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by_email(params[:session][:email].downcase)
<<<<<<< HEAD
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user 
		else
			flash.now[:error] = 'Invalid email/password combination' # Not Right Yet
			render 'new'
		end
	end

	def destroy
=======
    	if user && user.authenticate(params[:session][:password])
      		sign_in user
      		redirect_to user
    	else
     		 flash.now[:error] = 'Invalid email/password combination'
      		render 'new'
    	end
	end

	def destroy
		sign_out
		redirect_to root_url
>>>>>>> sign-in-out
	end

end
