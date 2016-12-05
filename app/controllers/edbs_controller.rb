class EdbsController < ApplicationController
  before_action :set_edb, only: [:show, :edit, :update, :destroy]

  # GET /edbs
  # GET /edbs.json
  def index
    @edbs = Edb.all
  end

  # GET /edbs/1
  # GET /edbs/1.json
  def show
  end

  # GET /edbs/new
  def new
    @edb = Edb.new
  end

  # GET /edbs/1/edit
  def edit
  end

  # POST /edbs
  # POST /edbs.json
  def create
    @edb = Edb.new(edb_params)

    respond_to do |format|
      if @edb.save
        format.html { redirect_to @edb, notice: 'Edb was successfully created.' }
        format.json { render :show, status: :created, location: @edb }
      else
        format.html { render :new }
        format.json { render json: @edb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /edbs/1
  # PATCH/PUT /edbs/1.json
  def update
    respond_to do |format|
      if @edb.update(edb_params)
        format.html { redirect_to @edb, notice: 'Edb was successfully updated.' }
        format.json { render :show, status: :ok, location: @edb }
      else
        format.html { render :edit }
        format.json { render json: @edb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /edbs/1
  # DELETE /edbs/1.json
  def destroy
    @edb.destroy
    respond_to do |format|
      format.html { redirect_to edbs_url, notice: 'Edb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_edb
      @edb = Edb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def edb_params
      params.require(:edb).permit(:note, :distance, :document_id, :beacon_id, event_id)
    end
end
