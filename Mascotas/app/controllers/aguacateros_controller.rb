class AguacaterosController < ApplicationController
  before_action :set_aguacatero, only: [:show, :edit, :update, :destroy]

  # GET /aguacateros
  # GET /aguacateros.json
  def index
    @aguacateros = Aguacatero.all
  end

  # GET /aguacateros/1
  # GET /aguacateros/1.json
  def show
  end

  # GET /aguacateros/new
  def new
    @aguacatero = Aguacatero.new
  end

  # GET /aguacateros/1/edit
  def edit
  end

  # POST /aguacateros
  # POST /aguacateros.json
  def create
    @aguacatero = Aguacatero.new(aguacatero_params)

    respond_to do |format|
      if @aguacatero.save
        format.html { redirect_to @aguacatero, notice: 'Aguacatero was successfully created.' }
        format.json { render :show, status: :created, location: @aguacatero }
      else
        format.html { render :new }
        format.json { render json: @aguacatero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aguacateros/1
  # PATCH/PUT /aguacateros/1.json
  def update
    respond_to do |format|
      if @aguacatero.update(aguacatero_params)
        format.html { redirect_to @aguacatero, notice: 'Aguacatero was successfully updated.' }
        format.json { render :show, status: :ok, location: @aguacatero }
      else
        format.html { render :edit }
        format.json { render json: @aguacatero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aguacateros/1
  # DELETE /aguacateros/1.json
  def destroy
    @aguacatero.destroy
    respond_to do |format|
      format.html { redirect_to aguacateros_url, notice: 'Aguacatero was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aguacatero
      @aguacatero = Aguacatero.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aguacatero_params
      params.require(:aguacatero).permit(:name, :raza1, :raza2, :sexo)
    end
end
