class WelcomeController < ApplicationController
  def index
  end

  def new
    @ipsum = Ipsum.create_ipsum
    respond_to do |format|
      format.js
    end
  end
end