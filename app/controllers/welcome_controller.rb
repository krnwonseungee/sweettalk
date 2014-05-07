class WelcomeController < ApplicationController
  def index
   @ipsum = Ipsum.create_ipsum
  end

  def get_ipsum
    @ipsum = Ipsum.create_ipsum
    render :layout => false
  end
end
