class RestaurantsController < ProtectedController
  before_action :set_restaurant, only: [:show, :update, :destroy]

  # GET /restaurants
  def index
    @restaurants = current_user.restaurants.all.order('id DESC')

    render json: @restaurants
  end

  # GET /restaurants/1
  def show
    render json: @restaurant
  end

  # POST /restaurants
  def create
    @restaurant = current_user.restaurants.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  def update
    if @restaurant.update(restaurant_params)
      render json: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /restaurants/1
  def destroy
    @restaurant.destroy
  end

  # YELP SEARCH
  def yelp_search
    location = params.require(:search)
    render json: HTTParty.get("https://api.yelp.com/v3/businesses/search?limit=50&term=Restaurants&location=#{location}", :headers => { "Authorization" => "Bearer #{ENV["YELP_API_KEY"]}"})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant
      @restaurant = current_user.restaurants.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def restaurant_params
      params.require(:restaurant).permit(:user_id, :name, :location, :telephone, :specialty, :image)
    end
end
