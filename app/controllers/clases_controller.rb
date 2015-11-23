class ClasesController < ApplicationController
  before_action :set_clase, only: [:show, :edit, :update, :destroy]

  def index
    @clases = Clase.nivel_minimo(params[:nivel_minimo]).all
  end

  respond_to :html

  def index
    @clases = Clase.all
    respond_with(@clases)
  end

  def show
    respond_with(@clase)
  end

  def new
    @clase = Clase.new
    respond_with(@clase)
  end

  def edit
  end

  def create
    @clase = Clase.new(clase_params)
    @clase.save
    respond_with(@clase)
  end

  def update
    @clase.update(clase_params)
    respond_with(@clase)
  end

  def destroy
    @clase.destroy
    respond_with(@clase)
  end

  private
    def set_clase
      @clase = Clase.find(params[:id])
    end

    def clase_params
      params.require(:clase).permit(:genero, :plataforma, :multijugador)
    end
end
