class RawIngredientsController < ApplicationController
  before_action :set_raw_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /raw_ingredients
  # GET /raw_ingredients.json
  def index
    @raw_ingredients = RawIngredient.all
  end

  # GET /raw_ingredients/1
  # GET /raw_ingredients/1.json
  def show
  end

  # GET /raw_ingredients/new
  def new
    @raw_ingredient = RawIngredient.new
  end

  # GET /raw_ingredients/1/edit
  def edit
  end

  # POST /raw_ingredients
  # POST /raw_ingredients.json
  def create
    @raw_ingredient = RawIngredient.new(raw_ingredient_params)

    respond_to do |format|
      if @raw_ingredient.save
        format.html { redirect_to @raw_ingredient, notice: 'Raw ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @raw_ingredient }
      else
        format.html { render :new }
        format.json { render json: @raw_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /raw_ingredients/1
  # PATCH/PUT /raw_ingredients/1.json
  def update
    respond_to do |format|
      if @raw_ingredient.update(raw_ingredient_params)
        format.html { redirect_to @raw_ingredient, notice: 'Raw ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @raw_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @raw_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /raw_ingredients/1
  # DELETE /raw_ingredients/1.json
  def destroy
    @raw_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to raw_ingredients_url, notice: 'Raw ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_raw_ingredient
      @raw_ingredient = RawIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def raw_ingredient_params
      params.fetch(:raw_ingredient, {})
    end
end
