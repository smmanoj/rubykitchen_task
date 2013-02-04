require 'json'

class TweetsController < ApplicationController

  def index
    file = JSON.parse(File.read("#{Rails.root}/public/rubyonrails.json"))
    @tweets = file["results"].compact
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save!
      flash[:notice] = "Created the tag!!"
      redirect_to tweets_path
    else
      render @tweet
    end
  end

  def edit
  end

  def update
  end

  def show
    @tweet_param = params
  end

  def destroy
  end
end
