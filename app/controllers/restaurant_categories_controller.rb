class RestaurantCategoriesController < ApplicationController
  before_action :set_restaurant_category, only: [:show, :edit, :update, :destroy]

  # GET /restaurant_categories
  # GET /restaurant_categories.json
  def index
    @restaurant_categories = RestaurantCategory.all
  end

  # GET /restaurant_categories/1
  # GET /restaurant_categories/1.json
  def show
  end

  # GET /restaurant_categories/new
  def new
    @restaurant_category = RestaurantCategory.new
  end

  # GET /restaurant_categories/1/edit
  def edit
  end

  # POST /restaurant_categories
  # POST /restaurant_categories.json
  def create
    @restaurant_category = RestaurantCategory.new(restaurant_category_params)

    respond_to do |format|
      if @restaurant_category.save
        format.html { redirect_to @restaurant_category, notice: 'Restaurant category was successfully created.' }
        format.json { render :show, status: :created, location: @restaurant_category }
      else
        format.html { render :new }
        format.json { render json: @restaurant_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /restaurant_categories/1
  # PATCH/PUT /restaurant_categories/1.json
  def update
    respond_to do |format|
      if @restaurant_category.update(restaurant_category_params)
        format.html { redirect_to @restaurant_category, notice: 'Restaurant category was successfully updated.' }
        format.json { render :show, status: :ok, location: @restaurant_category }
      else
        format.html { render :edit }
        format.json { render json: @restaurant_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /restaurant_categories/1
  # DELETE /restaurant_categories/1.json
  def destroy
    @restaurant_category.destroy
    respond_to do |format|
      format.html { redirect_to restaurant_categories_url, notice: 'Restaurant category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_restaurant_category
      @restaurant_category = RestaurantCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def restaurant_category_params
      params.require(:restaurant_category).permit(:restaurant_id_integer, :category_id)
    end
end
