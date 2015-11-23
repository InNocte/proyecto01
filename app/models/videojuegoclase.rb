class Videojuegoclase < ActiveRecord::Base
  belongs_to :videojuego
  belongs_to :clase
  validates :videojuego, presence: true, length: {in:4..20, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 20 caracteres'}
  validates :clase, presence: true, length: {in:4..15, too_short:'Tiene que tener al menos 4 caracteres', too_long:'Maxima de 15 caracteres'}
end
