class Api::RestaurantsController < ApplicationController
  def index
    @restaurants = HTTP
      .headers("user-key" => Rails.application.credentials.zomato_api[:api_key])
      .get("https://developers.zomato.com/api/v2.1/search?q=#{params[:search]}")
      .parse["restaurants"]

    render "index.json.jb"
  end
end
