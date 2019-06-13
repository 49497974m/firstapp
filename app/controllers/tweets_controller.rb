class TweetsController < ApplicationController
  before_action :move_to_index, except: :index

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
    @tweet = Tweet.page(params[:page]).per(5).order("create_at DESC")
  end
  
  private
    def tweet_params
      params.require(:tweet).permit(:text)
    end

    def move_to_index
      redirect_to action: :index unless user_signed_in?
    end

end
