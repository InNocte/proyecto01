class Videojuegoclase < ActiveRecord::Base
  belongs_to :videojuego
  belongs_to :clase
  validates :videojuego, presence: true, length: {in:2..50, too_short:'Tiene que tener al menos 2 caracteres', too_long:'Maxima de 50 caracteres'}
  validates :clase, presence: true, length: {in:2..30, too_short:'Tiene que tener al menos 2 caracteres', too_long:'Maxima de 30 caracteres'}
end
