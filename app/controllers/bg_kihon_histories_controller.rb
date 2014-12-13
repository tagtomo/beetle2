class BgKihonHistoriesController < ApplicationController
  before_action :set_bg_kihon_history, only: [:show, :edit, :update, :destroy]

  # GET /bg_kihon_histories
  # GET /bg_kihon_histories.json
  def index
    @bg_kihon_histories = BgKihonHistory.all
  end

  # GET /bg_kihon_histories/1
  # GET /bg_kihon_histories/1.json
  def show
  end

  # GET /bg_kihon_histories/new
  def new
    @bg_kihon_history = BgKihonHistory.new
  end

  # GET /bg_kihon_histories/1/edit
  def edit
  end

  # POST /bg_kihon_histories
  # POST /bg_kihon_histories.json
  def create
    @bg_kihon_history = BgKihonHistory.new(bg_kihon_history_params)

    respond_to do |format|
      if @bg_kihon_history.save
        format.html { redirect_to @bg_kihon_history, notice: 'Bg kihon history was successfully created.' }
        format.json { render :show, status: :created, location: @bg_kihon_history }
      else
        format.html { render :new }
        format.json { render json: @bg_kihon_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bg_kihon_histories/1
  # PATCH/PUT /bg_kihon_histories/1.json
  def update
    respond_to do |format|
      if @bg_kihon_history.update(bg_kihon_history_params)
        format.html { redirect_to @bg_kihon_history, notice: 'Bg kihon history was successfully updated.' }
        format.json { render :show, status: :ok, location: @bg_kihon_history }
      else
        format.html { render :edit }
        format.json { render json: @bg_kihon_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bg_kihon_histories/1
  # DELETE /bg_kihon_histories/1.json
  def destroy
    @bg_kihon_history.destroy
    respond_to do |format|
      format.html { redirect_to bg_kihon_histories_url, notice: 'Bg kihon history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bg_kihon_history
      @bg_kihon_history = BgKihonHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bg_kihon_history_params
      params.require(:bg_kihon_history).permit(:number, :history_no, :kazei_type, :toriatukaitabako_type, :tokureitabako_type, :send_type, :stop_sdate, :stop_edate, :chenge_date, :chenge_jiyu)
    end
end
