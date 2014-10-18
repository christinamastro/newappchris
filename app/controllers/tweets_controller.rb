class TweetsController < ApplicationController
	def new
		@tweet = Tweet.new
		@tweets = Tweet.all
	end

	def create
		@tweet_to_create = Tweet.new(tweet_params)
		if @tweet_to_create.save
			flash.now["sucecss"] = "You have created a tweet."
		else
			flash.now["danger"] = "Please review the errors below."
		end

		@tweet = Tweet.new

		@tweets = Tweet.all

		render 'new'
	end

	def edit
	end

	def show
	end

	def index
	end

	def tweet_params
		return params.require("tweet").permit("content")
	end
end

