class PersonHistoriesController < ApplicationController
  before_action :set_person_history, only: [:show, :edit, :update, :destroy]

  # GET /person_histories
  # GET /person_histories.json
  def index
    @person_histories = PersonHistory.all
  end

  # GET /person_histories/1
  # GET /person_histories/1.json
  def show
  end

  # GET /person_histories/new
  def new
    @person_history = PersonHistory.new
  end

  # GET /person_histories/1/edit
  def edit
  end

  # POST /person_histories
  # POST /person_histories.json
  def create
    @person_history = PersonHistory.new(person_history_params)

    respond_to do |format|
      if @person_history.save
        format.html { redirect_to @person_history, notice: 'Person history was successfully created.' }
        format.json { render :show, status: :created, location: @person_history }
      else
        format.html { render :new }
        format.json { render json: @person_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /person_histories/1
  # PATCH/PUT /person_histories/1.json
  def update
    respond_to do |format|
      if @person_history.update(person_history_params)
        format.html { redirect_to @person_history, notice: 'Person history was successfully updated.' }
        format.json { render :show, status: :ok, location: @person_history }
      else
        format.html { render :edit }
        format.json { render json: @person_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /person_histories/1
  # DELETE /person_histories/1.json
  def destroy
    @person_history.destroy
    respond_to do |format|
      format.html { redirect_to person_histories_url, notice: 'Person history was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_person_history
      @person_history = PersonHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def person_history_params
      params.require(:person_history).permit(:number, :history_no, :person_type, :legal_cd, :legal_position_cd, :name, :name_k, :branch_name, :branch_name_k, :zipno, :address1_cd, :address2_cd, :address3_cd, :address4_cd, :address5_cd, :address, :address_kata, :n_zei_id, :serch_name, :serch_name_k, :update_date, :update_reason)
    end
end
