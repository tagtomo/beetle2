class AddresseesController < ApplicationController
  before_action :set_addressee, only: [:show, :edit, :update, :destroy]

  # GET /addressees
  # GET /addressees.json
  def index
    @addressees = Addressee.all
  end

  # GET /addressees/1
  # GET /addressees/1.json
  def show
  end

  # GET /addressees/new
  def new
    @addressee = Addressee.new
  end

  # GET /addressees/1/edit
  def edit
  end

  # POST /addressees
  # POST /addressees.json
  def create
    @addressee = Addressee.new(addressee_params)

    respond_to do |format|
      if @addressee.save
        format.html { redirect_to @addressee, notice: 'Addressee was successfully created.' }
        format.json { render :show, status: :created, location: @addressee }
      else
        format.html { render :new }
        format.json { render json: @addressee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addressees/1
  # PATCH/PUT /addressees/1.json
  def update
    respond_to do |format|
      if @addressee.update(addressee_params)
        format.html { redirect_to @addressee, notice: 'Addressee was successfully updated.' }
        format.json { render :show, status: :ok, location: @addressee }
      else
        format.html { render :edit }
        format.json { render json: @addressee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addressees/1
  # DELETE /addressees/1.json
  def destroy
    @addressee.destroy
    respond_to do |format|
      format.html { redirect_to addressees_url, notice: 'Addressee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addressee
      @addressee = Addressee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addressee_params
      params.require(:addressee).permit(:number, :data_type, :name, :zipno, :address1_cd, :address2_cd, :address3_cd, :address4_cd, :address5_cd, :address, :address_kata, :start_date, :end_date)
    end
end
