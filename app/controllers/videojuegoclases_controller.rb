class VideojuegoclasesController < ApplicationController
  before_action :set_videojuegoclase, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @videojuegoclases = Videojuegoclase.all
    respond_with(@videojuegoclases)
  end

  def show
    respond_with(@videojuegoclase)
  end

  def new
    @videojuegoclase = Videojuegoclase.new
    respond_with(@videojuegoclase)
  end

  def edit
  end

  def create
    @videojuegoclase = Videojuegoclase.new(videojuegoclase_params)
    @videojuegoclase.save
    respond_with(@videojuegoclase)
  end

  def update
    @videojuegoclase.update(videojuegoclase_params)
    respond_with(@videojuegoclase)
  end

  def destroy
    @videojuegoclase.destroy
    respond_with(@videojuegoclase)
  end

  private
    def set_videojuegoclase
      @videojuegoclase = Videojuegoclase.find(params[:id])
    end

    def videojuegoclase_params
      params.require(:videojuegoclase).permit(:videojuego_id, :clase_id)
    end
end
