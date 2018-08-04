class CurrentTotalCostsController < ApplicationController
  before_action :set_current_total_cost, only: [:show, :edit, :update, :destroy]

  # GET /current_total_costs
  # GET /current_total_costs.json
  def index
    @current_total_costs = CurrentTotalCost.all
  end

  # GET /current_total_costs/1
  # GET /current_total_costs/1.json
  def show
  end

  # GET /current_total_costs/new
  def new
    @current_total_cost = CurrentTotalCost.new
  end

  # GET /current_total_costs/1/edit
  def edit
  end

  # POST /current_total_costs
  # POST /current_total_costs.json
  def create
    @current_total_cost = CurrentTotalCost.new(current_total_cost_params)

    respond_to do |format|
      if @current_total_cost.save
        format.html { redirect_to @current_total_cost, notice: 'Current total cost was successfully created.' }
        format.json { render :show, status: :created, location: @current_total_cost }
      else
        format.html { render :new }
        format.json { render json: @current_total_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_total_costs/1
  # PATCH/PUT /current_total_costs/1.json
  def update
    respond_to do |format|
      if @current_total_cost.update(current_total_cost_params)
        format.html { redirect_to @current_total_cost, notice: 'Current total cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_total_cost }
      else
        format.html { render :edit }
        format.json { render json: @current_total_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_total_costs/1
  # DELETE /current_total_costs/1.json
  def destroy
    @current_total_cost.destroy
    respond_to do |format|
      format.html { redirect_to current_total_costs_url, notice: 'Current total cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_total_cost
      @current_total_cost = CurrentTotalCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_total_cost_params
      params.require(:current_total_cost).permit(:total)
    end
end
