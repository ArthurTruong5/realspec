class NewTotalCostsController < ApplicationController
  before_action :set_new_total_cost, only: [:show, :edit, :update, :destroy]

  # GET /new_total_costs
  # GET /new_total_costs.json
  def index
    @new_total_costs = NewTotalCost.all
  end

  # GET /new_total_costs/1
  # GET /new_total_costs/1.json
  def show
  end

  # GET /new_total_costs/new
  def new
    @new_total_cost = NewTotalCost.new
  end

  # GET /new_total_costs/1/edit
  def edit
  end

  # POST /new_total_costs
  # POST /new_total_costs.json
  def create
    @new_total_cost = NewTotalCost.new(new_total_cost_params)

    respond_to do |format|
      if @new_total_cost.save
        format.html { redirect_to @new_total_cost, notice: 'New total cost was successfully created.' }
        format.json { render :show, status: :created, location: @new_total_cost }
      else
        format.html { render :new }
        format.json { render json: @new_total_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_total_costs/1
  # PATCH/PUT /new_total_costs/1.json
  def update
    respond_to do |format|
      if @new_total_cost.update(new_total_cost_params)
        format.html { redirect_to @new_total_cost, notice: 'New total cost was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_total_cost }
      else
        format.html { render :edit }
        format.json { render json: @new_total_cost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_total_costs/1
  # DELETE /new_total_costs/1.json
  def destroy
    @new_total_cost.destroy
    respond_to do |format|
      format.html { redirect_to new_total_costs_url, notice: 'New total cost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_total_cost
      @new_total_cost = NewTotalCost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_total_cost_params
      params.require(:new_total_cost).permit(:total)
    end
end
