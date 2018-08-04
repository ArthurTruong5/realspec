class CurrentAddressesController < ApplicationController
  before_action :set_current_address, only: [:show, :edit, :update, :destroy]

  # GET /current_addresses
  # GET /current_addresses.json
  def index
    @current_addresses = CurrentAddress.all
  end

  # GET /current_addresses/1
  # GET /current_addresses/1.json
  def show
  end

  # GET /current_addresses/new
  def new
    @current_address = CurrentAddress.new
  end

  # GET /current_addresses/1/edit
  def edit
  end

  # POST /current_addresses
  # POST /current_addresses.json
  def create
    @current_address = CurrentAddress.new(current_address_params)

    respond_to do |format|
      if @current_address.save
        format.html { redirect_to @current_address, notice: 'Current address was successfully created.' }
        format.json { render :show, status: :created, location: @current_address }
      else
        format.html { render :new }
        format.json { render json: @current_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /current_addresses/1
  # PATCH/PUT /current_addresses/1.json
  def update
    respond_to do |format|
      if @current_address.update(current_address_params)
        format.html { redirect_to @current_address, notice: 'Current address was successfully updated.' }
        format.json { render :show, status: :ok, location: @current_address }
      else
        format.html { render :edit }
        format.json { render json: @current_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /current_addresses/1
  # DELETE /current_addresses/1.json
  def destroy
    @current_address.destroy
    respond_to do |format|
      format.html { redirect_to current_addresses_url, notice: 'Current address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_current_address
      @current_address = CurrentAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def current_address_params
      params.require(:current_address).permit(:address, :rent)
    end
end
