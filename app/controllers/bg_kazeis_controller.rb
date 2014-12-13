class BgKazeisController < ApplicationController
  before_action :set_bg_kazei, only: [:show, :edit, :update, :destroy]

  # GET /bg_kazeis
  # GET /bg_kazeis.json
  def index
    @bg_kazeis = BgKazei.all
  end

  # GET /bg_kazeis/1
  # GET /bg_kazeis/1.json
  def show
  end

  # GET /bg_kazeis/new
  def new
    @bg_kazei = BgKazei.new
  end

  # GET /bg_kazeis/1/edit
  def edit
  end

  # POST /bg_kazeis
  # POST /bg_kazeis.json
  def create
    @bg_kazei = BgKazei.new(bg_kazei_params)

    respond_to do |format|
      if @bg_kazei.save
        format.html { redirect_to @bg_kazei, notice: 'Bg kazei was successfully created.' }
        format.json { render :show, status: :created, location: @bg_kazei }
      else
        format.html { render :new }
        format.json { render json: @bg_kazei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bg_kazeis/1
  # PATCH/PUT /bg_kazeis/1.json
  def update
    respond_to do |format|
      if @bg_kazei.update(bg_kazei_params)
        format.html { redirect_to @bg_kazei, notice: 'Bg kazei was successfully updated.' }
        format.json { render :show, status: :ok, location: @bg_kazei }
      else
        format.html { render :edit }
        format.json { render json: @bg_kazei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bg_kazeis/1
  # DELETE /bg_kazeis/1.json
  def destroy
    @bg_kazei.destroy
    respond_to do |format|
      format.html { redirect_to bg_kazeis_url, notice: 'Bg kazei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bg_kazei
      @bg_kazei = BgKazei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bg_kazei_params
      params.require(:bg_kazei).permit(:number, :kazei_number, :sotonendo, :soto_y, :kazeinendo, :kazei_y, :declaration_type, :declaration_date)
    end
end
