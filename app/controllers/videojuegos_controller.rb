class VideojuegosController < ApplicationController
  before_action :set_videojuego, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @videojuegos = Videojuego.all
    respond_with(@videojuegos)
  end

  def show
    respond_with(@videojuego)
  end

  def new
    @videojuego = Videojuego.new
    respond_with(@videojuego)
  end

  def edit
  end

  def create
    @videojuego = Videojuego.new(videojuego_params)
    @videojuego.save
    respond_with(@videojuego)
  end

  def update
    @videojuego.update(videojuego_params)
    respond_with(@videojuego)
  end

  def destroy
    @videojuego.destroy
    respond_with(@videojuego)
  end

  private
    def set_videojuego
      @videojuego = Videojuego.find(params[:id])
    end

    def videojuego_params
      params.require(:videojuego).permit(:nombre, :descripcion, :precio, :fechanacimiento)
    end
end
