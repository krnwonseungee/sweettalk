class WelcomeController < ApplicationController
  # before_filter?
  def index
   @ipsum = Ipsum.create_ipsum
  end

  def create
  end

  def get_ipsum
    @ipsum = Ipsum.create_ipsum
    render :layout => false
  end
end
