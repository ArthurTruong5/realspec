class CurrentTravelCostsController < ApplicationController
  before_action :set_current_travel_cost, only: [:show, :edit, :update, :destroy]

  # GET /current_travel_costs
  # GET /current_travel_costs.json
  def index
    @current_travel_costs = CurrentTravelCost.all
  end

  # GET /current_travel_costs/1
  # GET /current_travel_costs/1.json
  def show
  end

  # GET /current_travel_costs/new
  def new
    @current_travel_cost = CurrentTravelCost.new
  end

  # GET /current_travel_costs/1/edit
  def edit
  end

  # POST /current_travel_costs
  # POST /current_travel_costs.json
  def create
    @current_travel_cost = CurrentTravelCost.new(current_travel_cost_params)

    respond_to do |format|
      if @current_travel_cost.save
        format.html { redirect_to @current_travel_cost, notice: 'Current travel cost was successfully created.' }
        format.json { render :show, status: :created, location: @current_travel_cost }
      else
        format.html { render :new }
        format.json { render json: @current_travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_travel_costs/1
  # PATCH/PUT /current_travel_costs/1.json
  def update
    respond_to do |format|
      if @current_travel_cost.update(current_travel_cost_params)
        format.html { redirect_to @current_travel_cost, notice: 'Current travel cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_travel_cost }
      else
        format.html { render :edit }
        format.json { render json: @current_travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_travel_costs/1
  # DELETE /current_travel_costs/1.json
  def destroy
    @current_travel_cost.destroy
    respond_to do |format|
      format.html { redirect_to current_travel_costs_url, notice: 'Current travel cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_travel_cost
      @current_travel_cost = CurrentTravelCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_travel_cost_params
      params.require(:current_travel_cost).permit(:bus, :car, :train, :light_rail)
    end
end
