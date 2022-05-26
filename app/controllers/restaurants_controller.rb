class RestaurantsController < ApplicationController
  before_action :find_restaurant, only: [ :name ]

  def index
    @restaurants = Restaurants.all
  end

  def name
    @restaurant_name = @restaurant.name
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
