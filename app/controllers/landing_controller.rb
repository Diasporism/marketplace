class LandingController < ApplicationController

  def index
    @disciplines = Discipline.includes(topics: :guides).all
  end

end
