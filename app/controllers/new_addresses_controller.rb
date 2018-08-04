class NewAddressesController < ApplicationController
  before_action :set_new_address, only: [:show, :edit, :update, :destroy]

  # GET /new_addresses
  # GET /new_addresses.json
  def index
    @new_addresses = NewAddress.all
  end

  # GET /new_addresses/1
  # GET /new_addresses/1.json
  def show
  end

  # GET /new_addresses/new
  def new
    @new_address = NewAddress.new
  end

  # GET /new_addresses/1/edit
  def edit
  end

  # POST /new_addresses
  # POST /new_addresses.json
  def create
    @new_address = NewAddress.new(new_address_params)

    respond_to do |format|
      if @new_address.save
        format.html { redirect_to @new_address, notice: 'New address was successfully created.' }
        format.json { render :show, status: :created, location: @new_address }
      else
        format.html { render :new }
        format.json { render json: @new_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_addresses/1
  # PATCH/PUT /new_addresses/1.json
  def update
    respond_to do |format|
      if @new_address.update(new_address_params)
        format.html { redirect_to @new_address, notice: 'New address was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_address }
      else
        format.html { render :edit }
        format.json { render json: @new_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_addresses/1
  # DELETE /new_addresses/1.json
  def destroy
    @new_address.destroy
    respond_to do |format|
      format.html { redirect_to new_addresses_url, notice: 'New address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_address
      @new_address = NewAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_address_params
      params.require(:new_address).permit(:address, :rent)
    end
end
