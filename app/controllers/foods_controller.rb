class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]
  autocomplete :food, :name, :full => true

  def compare
    @foods_id = Food.where(name: params[:foodName]).pluck(:id)
    @meals_id = Ingredient.where(food_id: @foods_id).pluck(:meal_id).uniq

    meal = []
    @meals_id.each do |meal_id|
      if((Meal.find(meal_id).ingredients.map.pluck(:food_id) - @foods_id).empty?)
          meal << Meal.find(meal_id)
      end
    end
    render json: { meal_object: meal }
  end

  def recipe
    @meal = Meal.find_by(id: params[:id])
  end

  # GET /foods
  # GET /foods.json
  def index
    @foods = Food.all
     if params[:search]
      @foods = Food.name_like("%#{params[:search]}%").order('name')
     else
     end
  end

  # GET /foods/1
  # GET /foods/1.json
  def show
  end

  # GET /foods/new
  def new
    @food = Food.new
  end

  # GET /foods/1/edit
  def edit
  end

  # POST /foods
  # POST /foods.json
  def create
    @food = Food.new(food_params)
    respond_to do |format|
      if @food.save
        format.html { redirect_to @food, notice: 'Food was successfully created.' }
        format.json { render :show, status: :created, location: @food }
      else
        format.html { render :new }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /foods/1
  # PATCH/PUT /foods/1.json
  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to @food, notice: 'Food was successfully updated.' }
        format.json { render :show, status: :ok, location: @food }
      else
        format.html { render :edit }
        format.json { render json: @food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.json
  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_url, notice: 'Food was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_food
      @food = Food.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def food_params
      params.require(:food).permit(:name)
    end
end
