class ApplicationController < ActionController::Base
  def review
    @restaurants = Restaurant.where(stars: 5)
  end
end
