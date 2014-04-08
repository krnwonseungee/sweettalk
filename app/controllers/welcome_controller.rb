class WelcomeController < ApplicationController
  # before_filter?
  def index
   @ipsum = Ipsum.create_ipsum
  end

  def create
  end

  def get_ipsum
    @ipsum = Ipsum.create_ipsum
    # # respond_to do |format|
    #   format.html { render "get_ipsum", layout: false}
    # # end
    # if @ipsum
      # render :template => 'get_ipsum'
    render :layout => false
    # end
  end
end
