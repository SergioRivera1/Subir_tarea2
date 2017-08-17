class IngresarsController < ApplicationController
  before_action :set_ingresar, only: [:show, :edit, :update, :destroy]

  # GET /ingresars
  # GET /ingresars.json
  def index
    @ingresars = Ingresar.all
  end

  # GET /ingresars/1
  # GET /ingresars/1.json
  def show
  end

  # GET /ingresars/new
  def new
    @ingresar = Ingresar.new
  end

  # GET /ingresars/1/edit
  def edit
  end

  # POST /ingresars
  # POST /ingresars.json
  def create
    @ingresar = Ingresar.new(ingresar_params)

    respond_to do |format|
      if @ingresar.save
        format.html { redirect_to @ingresar, notice: 'Ingresar was successfully created.' }
        format.json { render :show, status: :created, location: @ingresar }
      else
        format.html { render :new }
        format.json { render json: @ingresar.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ingresars/1
  # PATCH/PUT /ingresars/1.json
  def update
    respond_to do |format|
      if @ingresar.update(ingresar_params)
        format.html { redirect_to @ingresar, notice: 'Ingresar was successfully updated.' }
        format.json { render :show, status: :ok, location: @ingresar }
      else
        format.html { render :edit }
        format.json { render json: @ingresar.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ingresars/1
  # DELETE /ingresars/1.json
  def destroy
    @ingresar.destroy
    respond_to do |format|
      format.html { redirect_to ingresars_url, notice: 'Ingresar was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ingresar
      @ingresar = Ingresar.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ingresar_params
      params.require(:ingresar).permit(:Mascota, :Nombre, :Raza, :Sexo)
    end
end
