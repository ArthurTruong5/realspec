class NewTravelCostsController < ApplicationController
  before_action :set_new_travel_cost, only: [:show, :edit, :update, :destroy]

  # GET /new_travel_costs
  # GET /new_travel_costs.json
  def index
    @new_travel_costs = NewTravelCost.all
  end

  # GET /new_travel_costs/1
  # GET /new_travel_costs/1.json
  def show
  end

  # GET /new_travel_costs/new
  def new
    @new_travel_cost = NewTravelCost.new
  end

  # GET /new_travel_costs/1/edit
  def edit
  end

  # POST /new_travel_costs
  # POST /new_travel_costs.json
  def create
    @new_travel_cost = NewTravelCost.new(new_travel_cost_params)

    respond_to do |format|
      if @new_travel_cost.save
        format.html { redirect_to @new_travel_cost, notice: 'New travel cost was successfully created.' }
        format.json { render :show, status: :created, location: @new_travel_cost }
      else
        format.html { render :new }
        format.json { render json: @new_travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_travel_costs/1
  # PATCH/PUT /new_travel_costs/1.json
  def update
    respond_to do |format|
      if @new_travel_cost.update(new_travel_cost_params)
        format.html { redirect_to @new_travel_cost, notice: 'New travel cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_travel_cost }
      else
        format.html { render :edit }
        format.json { render json: @new_travel_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_travel_costs/1
  # DELETE /new_travel_costs/1.json
  def destroy
    @new_travel_cost.destroy
    respond_to do |format|
      format.html { redirect_to new_travel_costs_url, notice: 'New travel cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_travel_cost
      @new_travel_cost = NewTravelCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_travel_cost_params
      params.require(:new_travel_cost).permit(:bus, :car, :train, :light_rail)
    end
end
