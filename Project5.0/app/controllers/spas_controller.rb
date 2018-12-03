class SpasController < ApplicationController
  before_action :set_spa, only: [:show, :edit, :update, :destroy]

  # GET /spas
  # GET /spas.json
  def index
    @spas = Spa.all
  end

  # GET /spas/1
  # GET /spas/1.json
  def show
  end

  # GET /spas/new
  def new
    @spa = Spa.new
  end

  # GET /spas/1/edit
  def edit
  end

  # POST /spas
  # POST /spas.json
  def create
    @spa = Spa.new(spa_params)

    respond_to do |format|
      if @spa.save
        format.html { redirect_to @spa, notice: 'Spa was successfully created.' }
        format.json { render :show, status: :created, location: @spa }
      else
        format.html { render :new }
        format.json { render json: @spa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spas/1
  # PATCH/PUT /spas/1.json
  def update
    respond_to do |format|
      if @spa.update(spa_params)
        format.html { redirect_to @spa, notice: 'Spa was successfully updated.' }
        format.json { render :show, status: :ok, location: @spa }
      else
        format.html { render :edit }
        format.json { render json: @spa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spas/1
  # DELETE /spas/1.json
  def destroy
    @spa.destroy
    respond_to do |format|
      format.html { redirect_to spas_url, notice: 'Spa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spa
      @spa = Spa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spa_params
      params.fetch(:spa, {})
    end
end
