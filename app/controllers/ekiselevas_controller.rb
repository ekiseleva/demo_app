class EkiselevasController < ApplicationController
  before_action :set_ekiseleva, only: [:show, :edit, :update, :destroy]

  # GET /ekiselevas
  # GET /ekiselevas.json
  def index
    @ekiselevas = Ekiseleva.all
  end

  # GET /ekiselevas/1
  # GET /ekiselevas/1.json
  def show
  end

  # GET /ekiselevas/new
  def new
    @ekiseleva = Ekiseleva.new
  end

  # GET /ekiselevas/1/edit
  def edit
  end

  # POST /ekiselevas
  # POST /ekiselevas.json
  def create
    @ekiseleva = Ekiseleva.new(ekiseleva_params)

    respond_to do |format|
      if @ekiseleva.save
        format.html { redirect_to @ekiseleva, notice: 'Ekiseleva was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ekiseleva }
      else
        format.html { render action: 'new' }
        format.json { render json: @ekiseleva.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ekiselevas/1
  # PATCH/PUT /ekiselevas/1.json
  def update
    respond_to do |format|
      if @ekiseleva.update(ekiseleva_params)
        format.html { redirect_to @ekiseleva, notice: 'Ekiseleva was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ekiseleva.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ekiselevas/1
  # DELETE /ekiselevas/1.json
  def destroy
    @ekiseleva.destroy
    respond_to do |format|
      format.html { redirect_to ekiselevas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ekiseleva
      @ekiseleva = Ekiseleva.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ekiseleva_params
      params[:ekiseleva]
    end
end
