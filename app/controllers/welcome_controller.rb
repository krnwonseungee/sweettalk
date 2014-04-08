class WelcomeController < ApplicationController
  # before_filter?
  def index
   @ipsum = Ipsum.create_ipsum
  end

  def create
  end

  def get_ipsum
    @ipsum = Ipsum.create_ipsum
    respond_to do |format|
      format.html
      format.js
    end
    # if @ipsum
    #   render :partial => 'ipsum'
    # end
  end
end
