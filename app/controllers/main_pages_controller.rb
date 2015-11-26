class MainPagesController < ApplicationController
skip_before_action :verify_authenticity_token

  def home
  end

  def help
  end

  def about
  end

  def client
  end

  def client_post
	  @client = params[:client]
	  # params[:id] = @client[:name]
	  if (@client[:name]=='admin' && @client[:password]=='654321') ||
       (@client[:email]=='admin@email.com' && @client[:password]=='654321')  
	     render 'client' and return
	     #render text: 'name - '+@client[:name]+' ,   email - '+@client[:email] and return
	  else 
	    flash.now[:error] = "You are not admin or interviewer"
      render 'home' # render text: 'INCORRECT'
	  end
  end

end
