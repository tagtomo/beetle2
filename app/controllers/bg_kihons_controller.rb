class BgKihonsController < ApplicationController
  before_action :set_bg_kihon, only: [:show, :edit, :update, :destroy]

  # GET /bg_kihons
  # GET /bg_kihons.json
  def index
    @bg_kihons = BgKihon.all
  end

  # GET /bg_kihons/1
  # GET /bg_kihons/1.json
  def show
  end

  # GET /bg_kihons/new
  def new
    @bg_kihon = BgKihon.new
  end

  # GET /bg_kihons/1/edit
  def edit
  end

  # POST /bg_kihons
  # POST /bg_kihons.json
  def create
    @bg_kihon = BgKihon.new(bg_kihon_params)

    respond_to do |format|
      if @bg_kihon.save
        format.html { redirect_to @bg_kihon, notice: 'Bg kihon was successfully created.' }
        format.json { render :show, status: :created, location: @bg_kihon }
      else
        format.html { render :new }
        format.json { render json: @bg_kihon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bg_kihons/1
  # PATCH/PUT /bg_kihons/1.json
  def update
    respond_to do |format|
      if @bg_kihon.update(bg_kihon_params)
        format.html { redirect_to @bg_kihon, notice: 'Bg kihon was successfully updated.' }
        format.json { render :show, status: :ok, location: @bg_kihon }
      else
        format.html { render :edit }
        format.json { render json: @bg_kihon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bg_kihons/1
  # DELETE /bg_kihons/1.json
  def destroy
    @bg_kihon.destroy
    respond_to do |format|
      format.html { redirect_to bg_kihons_url, notice: 'Bg kihon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bg_kihon
      @bg_kihon = BgKihon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bg_kihon_params
      params.require(:bg_kihon).permit(:number, :kazei_type, :toriatukaitabako_type, :tokureitabako_type, :send_type, :stop_sdate, :stop_edate, :chenge_date, :change_jiyu)
    end
end
