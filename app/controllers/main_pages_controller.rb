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
	   params[:id] = @client[:name]
	   render text: 'name - '+@client[:name]+' ,   email - '+@client[:email]
    # render text: "Client post"
  	  end

end
