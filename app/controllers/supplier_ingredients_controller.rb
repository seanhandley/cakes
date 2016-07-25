class SupplierIngredientsController < ApplicationController
  before_action :set_supplier_ingredient, only: [:show, :edit, :update, :destroy]

  # GET /supplier_ingredients
  # GET /supplier_ingredients.json
  def index
    @supplier_ingredients = SupplierIngredient.all
  end

  # GET /supplier_ingredients/1
  # GET /supplier_ingredients/1.json
  def show
  end

  # GET /supplier_ingredients/new
  def new
    @supplier_ingredient = SupplierIngredient.new
  end

  # GET /supplier_ingredients/1/edit
  def edit
  end

  # POST /supplier_ingredients
  # POST /supplier_ingredients.json
  def create
    @supplier_ingredient = SupplierIngredient.new(supplier_ingredient_params)

    respond_to do |format|
      if @supplier_ingredient.save
        format.html { redirect_to @supplier_ingredient, notice: 'Supplier ingredient was successfully created.' }
        format.json { render :show, status: :created, location: @supplier_ingredient }
      else
        format.html { render :new }
        format.json { render json: @supplier_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /supplier_ingredients/1
  # PATCH/PUT /supplier_ingredients/1.json
  def update
    respond_to do |format|
      if @supplier_ingredient.update(supplier_ingredient_params)
        format.html { redirect_to @supplier_ingredient, notice: 'Supplier ingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @supplier_ingredient }
      else
        format.html { render :edit }
        format.json { render json: @supplier_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /supplier_ingredients/1
  # DELETE /supplier_ingredients/1.json
  def destroy
    @supplier_ingredient.destroy
    respond_to do |format|
      format.html { redirect_to supplier_ingredients_url, notice: 'Supplier ingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_supplier_ingredient
      @supplier_ingredient = SupplierIngredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def supplier_ingredient_params
      params.fetch(:supplier_ingredient, {})
    end
end
