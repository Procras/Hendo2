class EdbguestsController < ApplicationController
  before_action :set_edbguest, only: [:show, :edit, :update, :destroy]

  # GET /edbguests
  # GET /edbguests.json
  def index
    @edbguests = Edbguest.all
  end

  # GET /edbguests/1
  # GET /edbguests/1.json
  def show
  end

  # GET /edbguests/new
  def new
    @edbguest = Edbguest.new
  end

  # GET /edbguests/1/edit
  def edit
  end

  # POST /edbguests
  # POST /edbguests.json
  def create
    @edbguest = Edbguest.new(edbguest_params)

    respond_to do |format|
      if @edbguest.save
        format.html { redirect_to @edbguest, notice: 'Edbguest was successfully created.' }
        format.json { render :show, status: :created, location: @edbguest }
      else
        format.html { render :new }
        format.json { render json: @edbguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edbguests/1
  # PATCH/PUT /edbguests/1.json
  def update
    respond_to do |format|
      if @edbguest.update(edbguest_params)
        format.html { redirect_to @edbguest, notice: 'Edbguest was successfully updated.' }
        format.json { render :show, status: :ok, location: @edbguest }
      else
        format.html { render :edit }
        format.json { render json: @edbguest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edbguests/1
  # DELETE /edbguests/1.json
  def destroy
    @edbguest.destroy
    respond_to do |format|
      format.html { redirect_to edbguests_url, notice: 'Edbguest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edbguest
      @edbguest = Edbguest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edbguest_params
      params.require(:edbguest).permit(:note, :guest_id, :edb_id)
    end
end
