class MainController < ApplicationController
  def index
    flash.now[:notice] = 'Welcome to the Schedule Tweets App!'

  end
end
