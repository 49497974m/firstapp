class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.user_id = current_user.id
    @tweet.save
    redirect_to tweet_path
  end

  def index
    @tweet = Tweet.order("create_at DESC")
  end
  
  private
    def tweet_params
      params.require(:tweet).permit(:text)
    end

end
