class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def new
    @tweet = Tweet.new
  end

  def create
    
  end

  def index
    @tweet = Tweet.all
  end
  
end
