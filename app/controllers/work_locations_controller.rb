class WorkLocationsController < ApplicationController
  before_action :set_work_location, only: [:show, :edit, :update, :destroy]

  # GET /work_locations
  # GET /work_locations.json
  def index
    @work_locations = WorkLocation.all
  end

  # GET /work_locations/1
  # GET /work_locations/1.json
  def show
  end

  # GET /work_locations/new
  def new
    @work_location = WorkLocation.new
  end

  # GET /work_locations/1/edit
  def edit
  end

  # POST /work_locations
  # POST /work_locations.json
  def create
    @work_location = WorkLocation.new(work_location_params)

    respond_to do |format|
      if @work_location.save
        format.html { redirect_to @work_location, notice: 'Work location was successfully created.' }
        format.json { render :show, status: :created, location: @work_location }
      else
        format.html { render :new }
        format.json { render json: @work_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /work_locations/1
  # PATCH/PUT /work_locations/1.json
  def update
    respond_to do |format|
      if @work_location.update(work_location_params)
        format.html { redirect_to @work_location, notice: 'Work location was successfully updated.' }
        format.json { render :show, status: :ok, location: @work_location }
      else
        format.html { render :edit }
        format.json { render json: @work_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /work_locations/1
  # DELETE /work_locations/1.json
  def destroy
    @work_location.destroy
    respond_to do |format|
      format.html { redirect_to work_locations_url, notice: 'Work location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_work_location
      @work_location = WorkLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def work_location_params
      params.require(:work_location).permit(:address)
    end
end
