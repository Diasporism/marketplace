class LandingController < ApplicationController

  def index
    @topics = Topic.includes(:guides).all
  end

end
